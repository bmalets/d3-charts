module Streamgraph

    def streamgraph( data_url, element='.streamgraph' )
      StreamgraphGenerator.new.generate( element, data_url )
      streamgraph_div = content_tag( :div, '', class: element[1..-1] )
      content_tag( :div, streamgraph_div, class: "#{element[1..-1]}_body" )
    end

end