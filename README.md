#d3-charts

Create your charts easy using d3.js library.
This gem provides an opportunity to create [any](http://en.wikipedia.org/wiki/Chart#Types_of_charts) chart more easily!


## Version

d3-charts comes with version 3.3.7 of D3.js. and will track the always
mirror the version of D3 it comes with.


## Installation

Add this line to your `Gemfile`:

    gem "d3-charts"

Please note that D3 is provided via the asset pipeline and you do *not* need to copy their files into your application. 
Rails will get them from d3-charts automatically.

Then add it to your manifest file, most probably at `app/assets/javascripts/application.js`:

    //= require d3


## Usage

```

Less-Common Charts:

	Treemap
	<%= treemap("http://0.0.0.0:3000/treemap.json") %>

	Streamgraph	
	<%= streamgraph("http://0.0.0.0:3000/streamgraph.csv") %>

	Radar Chart
	<%= radar_chart("http://0.0.0.0:3000/radar_chart.json") %>

	Polar Area Diagram
	<%= polar_area_diagram( "http://0.0.0.0:3000/polar_area_diagram.json" ) %>

	Bubble Chart
	<%= bubble_chart( "http://0.0.0.0:3000/bubble_chart.json" ) %>

Common Charts:

	Line Chart
	<%= line_chart( [1,2,3,4,5] ) %>

	Pie Chart
	<%= pie_chart( "http://0.0.0.0:3000/pie_chart.csv" ) %>

	Histogram Chart
	<%= histogram_chart( [ 0.3868526664824069, 0.4917571016462725, 
		               0.38783356112423817, 0.5401234418737314, 
			       0.41510852382870295, 0.46538050029079203 ] ) %>

	Vertical Bar Chart
	<%= vertical_bar_chart( "http://0.0.0.0:3000/vertical_bar_chart.tsv" ) %>

	Horizontal Bar Chart
	<%= horizontal_bar_chart( [1,2,3,4,5] ) %>

```

 You can see how it works [http://charticus.herokuapp.com](http://charticus.herokuapp.com).

=========
to be continued... :)                         
