class RostersController < ApplicationController

  before_filter :require_instructor

  inherit_resources
  belongs_to :course
  actions :show

  protected

  def resource
  end

end
