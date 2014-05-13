module PolarAreaDiagram

    def polar_area_diagram( data_url, element='.polar_area_diagram' )
      PolarAreaDiagramGenerator.new.generate( element, data_url )
      content_tag( :div, '', class: element[1..-1] )
    end

end