class TreemapGenerator < BaseGenerator

  # generate horizontal bar chart
  #   element - div id or class for chart
  #   data_url - json file with data
  def generate( element, data_url )
    add_assets( 'treemap.js', js_code( element, data_url ) )
    add_assets( 'treemap.css', css_code( element ) )   
  end

end