require 'charts/common/bar_chart'

module D3
  module Charts
  	class Railtie < ::Rails::Railtie
      initializer "charts.common.bar_chart" do
    	  ActionView::Base.send :include, BarChart
      end
  	end
  end
end