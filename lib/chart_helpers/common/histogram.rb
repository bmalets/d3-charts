module Histogram

    def histogram( data, element='.histogram' )
      HistogramGenerator.new.generate( element, data )
      content_tag( :div, '', class: element[1..-1] )
    end

    # TODO
    # duration histogram
    # http://bl.ocks.org/mbostock/3048166

end