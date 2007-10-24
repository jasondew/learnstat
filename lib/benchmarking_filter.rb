require 'ruby-prof'

class BenchmarkingFilter
  def self.filter(controller, &block)
    result = RubyProf.profile( &block )
    printer = RubyProf::GraphHtmlPrinter.new(result)

    f = File.new( "/tmp/graph.html", "w" )
    printer.print( f )
    f.close
  end
end
