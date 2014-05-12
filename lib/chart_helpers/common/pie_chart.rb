module PieChart

    def pie_chart( data_url, element='.pie_chart' )
      PieChartGenerator.new.generate( element, data_url )
      content_tag( :div, '', class: element[1..-1] )
    end

    # TODO
    # circle pie chart

end