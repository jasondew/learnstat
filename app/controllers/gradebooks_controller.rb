class GradebooksController < ApplicationController

  before_filter :get_course

  def show
    @quizzes = @course.quizzes(true)
    @gradebook = Hash.new {|h,k| h[k] = Array.new }

    @students = current_user.instructor? ? @course.students : [current_user]

    @students.each do |student|
      @course.gradeables.each do |gradeable|
        @gradebook[gradeable.name.underscore][student.id] = gradeable.grade_for(student)
      end

      @gradebook['quiz_average'][student.id] = student.mean_score
      @gradebook['exam_average'][student.id] = student.exam_mean_score
    end
  end

end
