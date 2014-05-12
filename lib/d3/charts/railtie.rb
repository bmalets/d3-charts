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
      end
  	end
  end
end