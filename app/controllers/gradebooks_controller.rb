class GradebooksController < ApplicationController

  before_filter :get_course

  def show
    @quizzes = @course.quizzes
    @gradebook = Hash.new {|h,k| h[k] = Array.new }

    @students = current_user.instructor? ? @course.students : [current_user]

    @students.each do |student|
      @course.gradeables.each do |gradeable|
        @gradebook[gradeable.name.underscore][student.id] = gradeable.grade_for(student)
      end

#      @gradebook['Quiz Average'][student.id] = student.adjusted_mean_score(0)
      @gradebook['Exam Average'][student.id] = student.exam_mean_score
    end
  end

end
