module TextualDateTimes

  def method_missing(method_name, *args)
    if method_name.to_s =~ /(.*)_textual$/
      time = send($1)
      time ? time.strftime("%Y-%m-%d %H:%M") : nil
    elsif method_name.to_s =~ /(.*)_textual=$/
      send("#{$1}=", Chronic.parse(args.first))
    else
      super
    end
  end

end
