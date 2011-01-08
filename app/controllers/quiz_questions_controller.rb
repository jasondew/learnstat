class QuizQuestionsController < ApplicationController

  before_filter :require_instructor

  inherit_resources
  actions :all, :except => :index
  belongs_to :quiz

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
