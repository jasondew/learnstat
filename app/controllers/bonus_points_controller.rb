class BonusPointsController < ApplicationController

  before_filter :require_instructor
  before_filter :get_course

  def edit
    @students = @course.students
  end

  def update
    results = params[:bonus_points].map {|user_id, points| User.find(user_id).update_attribute :bonus_points, points }
    if results.all?
      flash[:notice] = "Bonus points saved"
    else
      flash[:error] = "Bonus points not saved"
    end

    redirect_to edit_course_bonus_points_path(@course)
  end

end
