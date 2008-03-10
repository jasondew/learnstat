class Question < ActiveRecord::Base

  has_many :choices, :class_name => 'QuestionChoice', :dependent => :delete_all, :order => 'id'

  acts_as_ferret :fields => {:content => {:store => :yes}, :choices => {:store => :yes}}

  def correct_answer?(question_choice_id)
    answer == question_choice_id.to_i
  end

end
