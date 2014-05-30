module RadarChart

    def radar_chart( data_url, element='.radar_chart' )
      RadarChartGenerator.new.generate( element, data_url )
      radar_chart_div = content_tag( :div, '', class: element[1..-1] )
      content_tag( :div, radar_chart_div, class: "#{element[1..-1]}_body" )
    end

end