module D3
  module Charts
  	class Railtie < ::Rails::Railtie
      initializer "chart_helpers.common.bar_chart" do
    	  ActionView::Base.send :include, BarChart
      end
  	end
  end
end