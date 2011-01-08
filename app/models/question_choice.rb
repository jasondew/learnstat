class QuestionChoice < ActiveRecord::Base

  belongs_to :question

  validates_presence_of :content

  def to_s
    content
  end

end
