class QuestionsController < ApplicationController

  before_filter :require_instructor

  inherit_resources

end
