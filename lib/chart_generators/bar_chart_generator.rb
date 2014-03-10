class HorizontalBarChartGenerator < BaseGenerator

  def generate( element, data )
    add_assets( 'horizontal_bar_chart.js', js_code( element, data ) )
    add_assets( 'horizontal_bar_chart.css', css_code( element ) )   
  end

end

class VerticalBarChartGenerator < BaseGenerator

  def generate( element, tsv_url )
    add_assets( 'vertical_bar_chart.js', js_code( element, tsv_url ) )
    add_assets( 'vertical_bar_chart.css', css_code( element ) )   
  end

end
