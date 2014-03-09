class BarChartGenerator < BaseGenerator
 
  def generate_assets( element, data )
    append_code( 'bar_chart.js', js_template( element, data ) )
    append_code( 'bar_chart.css', css_template( element ) )
  end

  def js_template( element, data )
    erb_file = template_path('js')
    template = ERB.new( File.read( erb_file ), nil, '%' )
    template.result( binding )
  end

  def css_template( element )
    erb_file = template_path('css')
    template = ERB.new( File.read( erb_file ), nil, '%' )
    template.result( binding )      
  end

  def template_path( f_type )
    f_fullpath = File.join( GEM_ROOT, eval("TEMPLATES_#{f_type.upcase}") )
    f_basename = self.class.name.sub('Generator','').gsub(/([^\^])([A-Z])/,'\1_\2').downcase
    f_extname  = ".#{f_type}.erb"
    File.join( f_fullpath, f_basename + f_extname )
  end

end