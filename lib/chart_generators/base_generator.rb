class BaseGenerator

  # generate assets for chart ( .js and .css )
  # and put them into rails assets path
  def add_assets( f_name, code )
    d_path = create_dir( f_name )
    f_path = file_path( d_path, f_name )
    make_file( f_path, code )
  end

  # get chart's js-code form template
  def js_code( element, data )
    erb = ERB.new( temp_js )
    erb.result( binding )
  end

  # get chart's css-code form template
  def css_code( element )
    erb = ERB.new( temp_css )
    erb.result( binding )      
  end

  private 

  def file_type( f_name )
    File.extname(f_name) == '.css' ? 'stylesheets' : 'javascripts'
  end

  def create_dir( f_name )
    type   = file_type(f_name)
    d_path = "app/assets/#{type}/d3-charts"
    make_dir( d_path )
    d_path
  end

  def file_path( f_path, f_name )
    File.join f_path, f_name
  end

  def make_dir( d_path )
    Dir.mkdir( d_path ) unless File.exists?( d_path )
  end

  def make_file( f_path, code )
    File.open( f_path,'w' ) do |f| 
      f.write( code ) 
    end #unless File.exists?( f_path )
  end

  def temp_js
    File.read temp_path('js')
  end

  def temp_css
    File.read temp_path('css')
  end

  def gem_root
    Gem::Specification.find_by_name('d3-charts').gem_dir
  end

  def temp_path( type )
    File.join temp_dir(type), temp_name(type)
  end

  def temp_dir( type ) 
    File.join gem_root, 'lib/chart_templates', type 
  end

  def temp_name( type )
    tn = self.class.name.sub('Generator', '')
    tn.gsub!(/([^\^])([A-Z])/,'\1_\2')
    "#{tn.downcase}.#{type}.erb"
  end

end