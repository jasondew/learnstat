module TextualDateTimes

  def method_missing(method_name, *args)
    if method_name.to_s =~ /(.*)_textual$/
      send($1)
    elsif method_name.to_s =~ /(.*)_textual=$/
      send("#{$1}=", Chronic.parse(args.first))
    else
      super
    end
  end

end
