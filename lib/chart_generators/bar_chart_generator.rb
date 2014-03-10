class HorizontalBarChartGenerator < BaseGenerator

  # generate horizontal bar chart
  #   element - div id or class for chart
  #   data    - array with chart's points 
  def generate( element, data )
    add_assets( 'horizontal_bar_chart.js', js_code( element, data ) )
    add_assets( 'horizontal_bar_chart.css', css_code( element ) )   
  end

end

class VerticalBarChartGenerator < BaseGenerator

  # generate horizontal bar chart
  #   element - div id or class for chart
  #   tsv_url - file with [ X , Y ] data table  
  def generate( element, tsv_url )
    add_assets( 'vertical_bar_chart.js', js_code( element, tsv_url ) )
    add_assets( 'vertical_bar_chart.css', css_code( element ) )   
  end

end
