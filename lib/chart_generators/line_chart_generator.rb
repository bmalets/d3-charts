class LineChartGenerator < BaseGenerator

  # generate horizontal bar chart
  #   element - div id or class for chart
  #   data - file with [ X , Y ] data table  
  def generate( element, data )
    add_assets( 'line_chart.js', js_code( element, data ) )
    add_assets( 'line_chart.css', css_code( element ) )   
  end

end