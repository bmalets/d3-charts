module LineChart

    # http://bl.ocks.org/mbostock/3048450
    def line_chart( data, element='.line_chart' )
      LineChartGenerator.new.generate( element, data )
      content_tag(:div, '', class: "aGraph #{element[1..-1]}", id: 'graph')
    end

end