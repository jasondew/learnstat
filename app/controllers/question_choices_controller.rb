class QuestionChoicesController < ApplicationController

  before_filter :require_instructor

  inherit_resources
  defaults :collection_name => "choices"
  belongs_to :question, :optional => true
  actions :all, :except => :index

  def create
    create! { @question }
  end

  def update
    update! { @question }
  end

  def destroy
    destroy! { @question }
  end

end
