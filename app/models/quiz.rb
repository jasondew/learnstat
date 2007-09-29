class Quiz < ActiveRecord::Base

  belongs_to :course
  has_many :questions, :class_name => 'QuizQuestion'
  has_many :grades

  validates_presence_of :name, :due_at

  def grade_for(user)
    grade = self.grades.find_by_user_id user

    return if grade

    0.75
  end

  def validate
    self.errors.add( :due_at, 'date must be in the future' ) if self.due_at < Time.now
    self.errors.add( :viewable_at, 'date must be in the future' ) if self.viewable_at < Time.now
    self.errors.add( :viewable_at, 'date must be before the due date' ) if self.viewable_at >= self.due
  end

  def participation
    # FIXME : implement this function
    0.75
  end

  def open?
    self.due_at <= Time.now
  end

  def viewable_now?
    self.viewable_at <= Time.now
  end

end
