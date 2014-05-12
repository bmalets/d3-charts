module LineChart

    def line_chart( data, element='.line_chart' )
      LineChartGenerator.new.generate( element, data )
      content_tag(:div, '', class: "#{element[1..-1]}")
    end

    # TODO
    # another line chart types with axis and tooltips

end