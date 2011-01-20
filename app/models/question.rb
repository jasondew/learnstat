class Question < ActiveRecord::Base

  has_many :choices, :class_name => 'QuestionChoice', :dependent => :delete_all, :order => 'id'

  validates_presence_of :content, :chapter, :answer
  validates_numericality_of :chapter, :answer

  def to_s
    content
  end

  def choice_texts
    choices.collect(&:content).join(" ")
  end

  def correct_answer?(question_choice_id)
    answer == question_choice_id.to_i
  end

end
