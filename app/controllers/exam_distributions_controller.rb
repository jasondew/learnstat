class ExamDistributionsController < ApplicationController

  before_filter :require_instructor

  before_filter :get_course
  before_filter :get_exam

  def show
    size = params[:id]
    grades = @exam.grades.collect {|grade| grade.value }.group_by {|score| letter_grade_for score }

    distribution = []

    LETTER_GRADES.each do |letter_grade|
      bar = Hash.new

      bar[:label] = letter_grade.to_s
      bar[:color] = '#333'
      bar[:frequency] = ((grades[letter_grade] and grades[letter_grade].size) || 0) / @exam.grades.size.to_f

      distribution << bar
    end

    image = BarGraphBuilder.new(distribution, 'Grade Distribution', size || '800x600')
    send_data( image.render, :type => 'image/png', :disposition => 'inline' )
  end


end

