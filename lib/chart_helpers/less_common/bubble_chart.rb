module BubbleChart

    def bubble_chart( data_url, element='.bubble_chart' )
      BubbleChartGenerator.new.generate( element, data_url )
      content_tag( :div, '', class: element[1..-1] )
    end

end