require 'rvg/rvg'
include Magick

class BarGraphBuilder

  RVG::dpi = 72

  @@title_styles = { :text_anchor => 'middle', :font_size => 30, :font_family => 'georgia', :fill=> '#CCC' }
  @@label_styles = { :font_size => 20, :font_family => 'verdana', :fill => '#CCC' }
  @@axis_styles = { :stroke_width => 2, :stroke => '#CCC' }
  @@padding = 25

  def initialize(distribution, title = 'Bar Graph', size = '800x600')
    @distribution = distribution
    @title = title
    @width, @height = size.split( 'x' ).collect {|x| x.to_i }

    @bar_width = (650 - (@distribution.size + 1) * @@padding) / @distribution.size
  end

  def render

    rvg = RVG.new(@width, @height).viewbox(0,0,800,600) do |canvas|
      canvas.background_image = Magick::Image.new(800, 600, GradientFill.new(0, 0, 800, 0, '#000', '#9b2f47'))

      canvas.text(400, 30) do |title|
        title.tspan(@title).styles( @@title_styles )
      end

      canvas.g do |axes|
        axes.line(100,  50, 100, 500).styles( @@axis_styles )
        axes.line(100, 500, 750, 500).styles( @@axis_styles )

        axes.line( 95,  50, 105,  50).styles( @@axis_styles )
        axes.line( 95, 165, 105, 165).styles( @@axis_styles )
        axes.line( 95, 275, 105, 275).styles( @@axis_styles )
        axes.line( 95, 385, 105, 385).styles( @@axis_styles )
      end

      canvas.text(80,  60) {|label| label.tspan( '100%' ).styles( @@label_styles.merge( :text_anchor => 'end' ) ) }
      canvas.text(80, 170) {|label| label.tspan(  '75%' ).styles( @@label_styles.merge( :text_anchor => 'end' ) ) }
      canvas.text(80, 280) {|label| label.tspan(  '50%' ).styles( @@label_styles.merge( :text_anchor => 'end' ) ) }
      canvas.text(80, 390) {|label| label.tspan(  '25%' ).styles( @@label_styles.merge( :text_anchor => 'end' ) ) }
      canvas.text(80, 500) {|label| label.tspan(   '0%' ).styles( @@label_styles.merge( :text_anchor => 'end' ) ) }

      @distribution.each_with_index do |bar, index|
        frequency = bar[:frequency]
        color = bar[:color]
        label = bar[:label] || (index+65).chr

        bar_style = { :stroke => color, :fill => color }
        bar_height = 450 * frequency
        bar_x = 100 + @@padding + (@@padding + @bar_width)*index
        bar_y = 500 - 450 * frequency - 2

        canvas.g {|bars| bars.rect( @bar_width, bar_height, bar_x, bar_y ).styles( bar_style ) }

        label_x = bar_x + @bar_width / 2
        label_y = 525

        canvas.text(label_x, label_y) {|bar_label| bar_label.tspan( label ).styles( @@label_styles.merge( :text_anchor => 'middle' ) ) }
      end

    end

    image = rvg.draw
    image.format = 'png'

    image.border!(1, 1, "#666")

    # Bend the image
    image.background_color = "none"

    # Make the shadow
    shadow = image.flop
    shadow = shadow.colorize(1, 1, 1, "gray75")    # shadow color can vary to taste
    shadow.background_color = "white"              # was "none"
    shadow.border!(10, 10, "white")
    shadow = shadow.blur_image(0, 3)               # shadow blurriness can vary according to taste

    # Composite image over shadow. The y-axis adjustment can vary according to taste.
    image = shadow.composite(image, 0, 5, Magick::OverCompositeOp)
    image.to_blob
  end

end
