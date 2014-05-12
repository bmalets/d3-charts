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

```ruby

	<!-- common charts -->
	
	<h1> Line Chart </h1>
	<%= line_chart( [1,9,6,8,10] ) %>


	<h1> Pie Chart </h1>
	<%= pie_chart( 'http://bl.ocks.org/mbostock/raw/3887235/data.csv' ) %>


        <h1> Histogram Chart </h1>
	<%= histogram_chart( [ 	0.3868526664824069,  0.4917571016462725, 
					   	   	0.38783356112423817, 0.5401234418737314, 
					   		0.41510852382870295, 0.46538050029079203 ] ) %>

	<h1> Vertical Bar Chart </h1>
	<%= vertical_bar_chart( 'http://bl.ocks.org/mbostock/raw/3885304/data.tsv' ) %>

	<h1> Horizontal Bar Chart </h1>
	<%= horizontal_bar_chart( [1,2,3,4,5] ) %>

	<!-- less common charts -->

	<h1> Bubble Chart </h1>
	<%= bubble_chart( 'http://bl.ocks.org/mbostock/raw/4063269/flare.json' ) %>
	
```

=========
to be continued... :)                         
