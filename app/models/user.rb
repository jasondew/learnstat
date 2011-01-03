class User < ActiveRecord::Base

  acts_as_authentic

  belongs_to :course

  has_many :announcements
  has_many :documents
  has_many :grades
  has_many :question_responses
  has_many :audits

  validates_uniqueness_of :blackboard_username, :case_sensitive => false

  before_save :set_course

  def to_s
    email
  end

  alias :full_name :to_s
  alias :name :to_s

  def mean_score
    return if question_responses.empty?

    closed_quiz_questions = course.closed_questions.size
    return if closed_quiz_questions == 0

    correct_responses.size / closed_quiz_questions.to_f
  end

  def adjusted_mean_score(adjustment)
    return if question_responses.empty?

    ams = (correct_responses.size + adjustment) / course.closed_questions.size.to_f
    ams > 1.0 ? 1.0 : ams
  end

  def correct_responses
    closed_quiz_ids = course.closed_quizzes.map {|quiz| quiz.id }
    question_responses.select {|response| response.correct and closed_quiz_ids.include?(response.quiz_id) }
  end

  def exam_mean_score
    return if grades.empty?
    grades.inject(0.0) {|sum, grade| sum += grade.value unless grade.exam.final; sum } / grades.reject {|grade| grade.exam.final }.length
  end

  def facebook
    if token = authenticated_with?(:facebook)
      @facebook ||= JSON.parse(token.get("/me"))
    end
  end

  def twitter
    if token = authenticated_with?(:twitter)
      @twitter ||= JSON.parse(token.get("/account/verify_credentials.json").body)
    end
  end

  def google
    @google ||= "" # todo
  end

  # primitive profile to show what's possible
  def profile
    unless @profile
      @profile = if facebook
        {
          :id     => facebook["id"],
          :name   => facebook["name"],
          :photo  => "https://graph.facebook.com/#{facebook["id"]}/picture",
          :link   => facebook["link"],
          :title  => "Facebook"
        }
      elsif twitter
        {
          :id     => twitter["id"],
          :name   => twitter["name"],
          :photo  => twitter["profile_image_url"],
          :link   => "http://twitter.com/#{twitter["screen_name"]}",
          :title  => "Twitter"
        }
      else
        {
          :id     => "unknown",
          :name   => "User",
          :photo  => "/images/icons/google.png",
          :link   => "/images/icons/google.png",
          :title  => "Google"
        }
      end
    end

    @profile
  end

  protected

  def set_course
    return true if self.course
    self.course = Course.find_by_registration_code registration_code
    errors.add_to_base "Invalid registration code."
    false
  end

end
