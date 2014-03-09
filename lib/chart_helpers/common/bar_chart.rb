module BarChart

    def bar_chart_for( element, data )
      BarChartGenerator.new.generate_assets( element, data )
      content_tag( :div, '', class: element[1..-1] )
    end

end