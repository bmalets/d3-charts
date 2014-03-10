class HistogramChartGenerator < BaseGenerator

  # generate horizontal bar chart
  #   element - div id or class for chart
  #   data    - array with chart's points 
  def generate( element, data )
    add_assets( 'histogram_chart.js', js_code( element, data ) )
    add_assets( 'histogram_chart.css', css_code( element ) )   
  end

end
