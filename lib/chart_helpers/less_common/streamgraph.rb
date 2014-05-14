module Streamgraph

    def streamgraph( data_url, element='.streamgraph' )
      StreamgraphGenerator.new.generate( element, data_url )
      content_tag( :div, '', class: "#{element[1..-1]}_body" ) do
        content_tag( :div, '', class: element[1..-1] )
      end
    end

end