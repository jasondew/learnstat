class QuizQuestionsController < ApplicationController

  before_filter :require_instructor

  inherit_resources
  actions :all, :except => :index
  belongs_to :quiz

  def new
    #FIXME search so that if there is a match on the question choice, bring back the siblings as well
    if params[:search]
      criteria = "%#{params[:search]}%"
      @questions = Question.includes(:choices).where("questions.content LIKE ? OR question_choices.content LIKE ?", *([criteria] * 2))
    else
      @questions = Question.includes(:choices).limit(10)
    end

    new!
  end

  def create
    create! { @quiz }
  end

  def update
    update! { @quiz }
  end

  def destroy
    destroy! { @quiz }
  end

end
