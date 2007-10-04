class Grade < ActiveRecord::Base

  belongs_to :user
  belongs_to :quiz

  has_many :responses, :class_name => 'QuestionResponse'

  validates_presence_of :user_id, :value

end
