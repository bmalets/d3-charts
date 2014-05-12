module BarChart

    def horizontal_bar_chart( data, element='.horizontal_bar_chart' )
      HorizontalBarChartGenerator.new.generate( element, data )
      content_tag( :div, '', class: element[1..-1] )
    end

    def vertical_bar_chart( data_url, element='.vertical_bar_chart' )
      VerticalBarChartGenerator.new.generate( element, data_url )
      content_tag( :div, '', class: element[1..-1] )
    end

    # TODO
    # vertical_bar_chart with csv, json, txt

end