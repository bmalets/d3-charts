module Treemap

    def treemap( data_url, element='.treemap' )
      TreemapGenerator.new.generate( element, data_url )
      content_tag( :div, '', class: element[1..-1] )
    end

end