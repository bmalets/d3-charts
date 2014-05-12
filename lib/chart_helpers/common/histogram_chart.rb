module HistogramChart

    def histogram_chart( data, element='.histogram_chart' )
      HistogramChartGenerator.new.generate( element, data )
      content_tag( :div, '', class: element[1..-1] )
    end

    # TODO
    # duration histogram
    # http://bl.ocks.org/mbostock/3048166

end