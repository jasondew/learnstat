class GradeDistributionsController < ApplicationController

  before_filter :require_instructor

  before_filter :get_course
  before_filter :get_quiz

  def show
    size = params[:id]
    grades = @quiz.scores.group_by {|score| letter_grade_for score }

    distribution = []

    Course::LETTER_GRADES.each do |letter_grade|
      bar = Hash.new

      bar[:label] = letter_grade.to_s
      bar[:color] = '#333'
      bar[:frequency] = ((grades[letter_grade] and grades[letter_grade].size) || 0) / @quiz.scores.size.to_f

      distribution << bar
    end

    image = BarGraphBuilder.new(distribution, 'Grade Distribution', size || '800x600')
    send_data( image.render, :type => 'image/png', :disposition => 'inline' )
  end


end
