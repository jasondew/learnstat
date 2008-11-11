class LabeledFormBuilder < ActionView::Helpers::FormBuilder

  %w(text_field password_field text_area check_box date_select file_field).each do |selector|
    src = <<-end_src
      def #{selector}(method, label=nil, *args)
        label ||= method.to_s.humanize
        label << ': '

        options = args.extract_options!
        options.update( :object => @object ) unless options[:object]

        @template.content_tag( options.delete(:wrapper_tag) || :p,
          returning( "" ) do |html|
            html << @template.label(@object_name, method, label, options.dup)
            html << @template.send(#{selector.inspect}, @object_name, method, options.dup)
          end
        )
      end
    end_src

    class_eval src, __FILE__, __LINE__
  end

  def select(method, label=nil, select_options=[], options={})
    options.update( :object => @object ) unless options[:object]

    @template.content_tag( options.delete(:wrapper_tag) || :p,
      returning( "" ) do |html|
        html << @template.label(@object_name, method, "#{label}: ", options.dup) if label
        html << @template.select(@object_name, method, select_options, options.dup)
      end
    )
  end

  def collection_select(method, label=nil, select_options=[], id_method=:id, name_method=:name, options={})
    label ||= method.to_s.humanize
    label << ': '

    options.update( :object => @object ) unless options[:object]

    @template.content_tag( options.delete(:wrapper_tag) || :p,
      returning( "" ) do |html|
        html << @template.label(@object_name, method, label, options.dup)
        html << @template.collection_select(@object_name, method, select_options, id_method, name_method, options.dup)
      end
    )
  end

end
