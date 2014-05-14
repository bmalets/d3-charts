module D3
  module Charts
  	class Railtie < ::Rails::Railtie
      initializer "chart_helpers" do
        # common charts
    	  ActionView::Base.send :include, BarChart
        ActionView::Base.send :include, HistogramChart
        ActionView::Base.send :include, PieChart
        ActionView::Base.send :include, LineChart
        # less common charts
        ActionView::Base.send :include, BubbleChart
        ActionView::Base.send :include, PolarAreaDiagram
        ActionView::Base.send :include, RadarChart
        ActionView::Base.send :include, Streamgraph
        ActionView::Base.send :include, Treemap
      end
  	end
  end
end