class AnalysisController < ApplicationController

  def show
		labelSource = {0 => 'A', 1 => 'B', 2 => 'C', 3 => 'D', 4 => 'E', 5 => 'F'}
		data = Array.new
		labels = Hash.new

		times_answered = Answer.find(:all, :conditions => ["question_id = ?", params[:question_id]]).size

		for choice in Question.find(params[:question_id]).choices
			times_chosen = Answer.find(:all, :conditions => ["choice_id = ?", choice.id]).size
			data.push( (times_chosen / (times_answered + 0.0)) * 100 )
		end

		i = 0

		while i < data.size
			labels[i] = labelSource[i]
			i = i + 1
		end

    g = Gruff::Bar.new('350x150')

    g.theme = {
      :colors => ['#990000'],
      :marker_color => 'white',
      :background_colors => ['#111111', '#666666'],
			:font_color => '#FFFFFF'
    }

		g.hide_title = true

    g.data("Class Answers (n=#{times_answered})", data)
    g.labels = labels

    send_data(g.to_blob, :disposition => 'inline', :type => 'image/png', :filename => "gruff.png")
  end

end
