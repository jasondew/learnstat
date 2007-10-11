class Question < ActiveRecord::Base

  has_many :choices, :class_name => 'QuestionChoice', :dependent => :delete_all, :order => 'id'

  def correct_answer?(question_choice_id)
    answer == question_choice_id.to_i
  end

end
