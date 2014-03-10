module BarChart

    def horizontal_bar_chart( data, element='.horizontal_bar_chart' )
      HorizontalBarChartGenerator.new.generate( element, data )
      content_tag( :div, '', class: element[1..-1] )
    end

    def vertical_bar_chart( data, element='.vertical_bar_chart' )
      VerticalBarChartGenerator.new.generate( element, data )
      content_tag( :div, '', class: element[1..-1] )
    end

end