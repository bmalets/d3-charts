module RadarChart

    def radar_chart( data_url, element='.radar_chart' )
      RadarChartGenerator.new.generate( element, data_url )
      content_tag( :div, '', class: "#{element[1..-1]}_body" ) do
        content_tag( :div, '', class: element[1..-1] )
      end
    end

end