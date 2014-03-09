module BarChart

    def bar_chart_for(element, data)
      
      bar_chart_js = <<-BAR_CHART_JS
        function bar_chart( element, data ) {
          var x = d3.scale.linear().domain( [0, d3.max(data)] ).range( [0, 420] );
          d3.select(element).selectAll("div").data(data).enter().append("div").style("width", function(d){ return x(d) + "px"; }).text(function(d){ return d; });
        }

        $(document).ready(function(){ bar_chart( "#{element}", [ 1, 2, 3, 4, 5, 4, 3, 2, 1 ] ); });
      BAR_CHART_JS

      Dir.mkdir('app/assets/javascripts/d3-charts') unless File.exists?( 'app/assets/javascripts/d3-charts' )
      js_file = 'app/assets/javascripts/d3-charts/bar_chart.js'
      File.open( js_file, 'w'){ |file| file.write( bar_chart_js ) } unless File.exists?( js_file )

      bar_chart_css = <<-BAR_CHART_CSS
        "#{element}" div {
          font: 10px sans-serif;
          background-color: steelblue;
          text-align: right;
          padding: 3px;
          margin: 1px;
          color: white;
        }
      BAR_CHART_CSS

      Dir.mkdir('app/assets/stylesheets/d3-charts') unless File.exists?( 'app/assets/stylesheets/d3-charts' )
      css_file = 'app/assets/stylesheets/d3-charts/bar_chart.css'
      File.open( css_file, 'w'){ |file| file.write( bar_chart_css ) } unless File.exists?( css_file )

      content_tag(:div, '', class: element[1..-1])
    end

end