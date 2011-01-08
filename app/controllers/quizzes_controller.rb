class QuizzesController < ApplicationController

  before_filter :require_instructor, :except => :show

  inherit_resources
  belongs_to :course, :optional => true

end
