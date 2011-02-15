class Question < ActiveRecord::Base

  has_many :choices, :class_name => 'QuestionChoice', :dependent => :delete_all, :order => 'id'

  validates_presence_of :content, :chapter, :answer
  validates_numericality_of :chapter, :answer

  module ClassMethods
    def quick_create question_text, answer_text, *wrong_answer_texts
      question = Question.new :content => question_text
      answer = QuestionChoice.new :content => answer_text
      wrong_answers = wrong_answer_texts.map {|text| QuestionChoice.new :content => text }
      [answer, wrong_answers].sort_by { rand }.each {|question_choice| question.choices << question_choice }
      question.save false
      question.update_attribute :answer, answer.id
      question
    end
  end
  extend ClassMethods

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
