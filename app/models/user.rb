require 'digest/sha1'

class User < ActiveRecord::Base

  belongs_to :course
  has_many :courses

  has_many :announcements
  has_many :documents
  has_many :grades
  has_many :question_responses
  has_many :correct_responses, :class_name => 'QuestionResponse', :conditions => { :correct => true }
  has_many :audits

  # Virtual attribute for the unencrypted password
  attr_accessor :password

  validates_presence_of     :login, :email, :first_name, :last_name
  validates_presence_of     :password,                   :if => :password_required?
  validates_presence_of     :password_confirmation,      :if => :password_required?
  validates_length_of       :password, :within => 4..40, :if => :password_required?
  validates_confirmation_of :password,                   :if => :password_required?
  validates_length_of       :login,    :within => 3..40
  validates_length_of       :email,    :within => 3..100
  validates_uniqueness_of   :login, :case_sensitive => false

  before_save :encrypt_password
  before_create :make_activation_code 

  # prevents a user from submitting a crafted form that bypasses activation
  # anything else you want your user to change should be added here.
  attr_accessible :login, :email, :password, :password_confirmation, :first_name, :last_name,
                  :blackboard_username, :registration_code, :instructor, :remember_me

  def full_name
    "#{first_name} #{last_name}"
  end

  def name
    "#{first_name.first.capitalize} #{last_name.capitalize}"
  end

  def mean_score
    correct_responses.size / question_responses.size.to_f
  end

  def adjusted_mean_score(adjustment)
    (correct_responses.size + adjustment)/ question_responses.size.to_f
  end

  def exam_mean_score
    return 0 unless grades.length > 0
    grades.sum(:value) / grades.length.to_f
  end

  def validate_on_create
    course = Course.find_by_registration_code self.registration_code

    if course
      self.course_id = course.id
      self.errors.add(:registration_code, 'invalid because the course is closed') if course.registration_closed_at < Time.now
    else
      self.errors.add :registration_code
    end
  end
  
  # Activates the user in the database.
  def activate
    @activated = true
    self.activated_at = Time.now
    self.activation_code = nil
    save(false)
  end

  def activated?
    # the existence of an activation code means they have not activated yet
    activation_code.nil?
  end

  # Returns true if the user has just been activated.
  def recently_activated?
    @activated
  end

  # Authenticates a user by their login name and unencrypted password.  Returns the user or nil.
  def self.authenticate(login, password)
    u = find :first, :conditions => ['login = ? and activated_at IS NOT NULL', login] # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  # Encrypts some data with the salt.
  def self.encrypt(password, salt)
    Digest::SHA1.hexdigest("--#{salt}--#{password}--")
  end

  # Encrypts the password with the user salt
  def encrypt(password)
    self.class.encrypt(password, salt)
  end

  def authenticated?(password)
    crypted_password == encrypt(password)
  end

  def remember_token?
    remember_token_expires_at && Time.now < remember_token_expires_at 
  end

  # These create and unset the fields required for remembering users between browser closes
  def remember_me
    remember_me_for 2.weeks
  end

  def remember_me_for(time)
    remember_me_until time.from_now
  end

  def remember_me_until(time)
    self.remember_token_expires_at = time
    self.remember_token            = encrypt("#{email}--#{remember_token_expires_at}")
    save(false)
  end

  def forget_me
    self.remember_token_expires_at = nil
    self.remember_token            = nil
    save(false)
  end

  protected
    # before filter 
    def encrypt_password
      return if password.blank?
      self.salt = Digest::SHA1.hexdigest("--#{Time.now.to_s}--#{login}--") if new_record?
      self.crypted_password = encrypt(password)
    end
    
    def password_required?
      crypted_password.blank? || !password.blank?
    end
    
    def make_activation_code
      self.activation_code = Digest::SHA1.hexdigest( Time.now.to_s.split(//).sort_by {rand}.join )
    end 
end
