class BaseGenerator

  GEM_ROOT = Gem::Specification.find_by_name('d3-charts').gem_dir

  PATH_JS  = 'app/assets/javascripts/d3-charts'
  PATH_CSS = 'app/assets/stylesheets/d3-charts'

  TEMPLATES_JS  = 'templates/javascripts'
  TEMPLATES_CSS = 'templates/stylesheets'

  def append_code( f_name, code )
    d_path = File.extname( f_name ) == '.css' ? PATH_CSS : PATH_JS 
    Dir.mkdir( d_path ) unless File.exists?( d_path )
    f_path = File.join( d_path, f_name )
    File.open( f_path,'w' ){ |f| f.write( code ) } unless File.exists?( f_path )
  end

end