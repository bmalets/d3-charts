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

Here you will find View Helpers for the following types of charts:

1. Bar chart

* Horizontal

e.g. [http://bl.ocks.org/mbostock/raw/7322386/](http://bl.ocks.org/mbostock/raw/7322386/) 

<code>horizontal_bar_chart( data, element='.horizontal_bar_chart' )</code>

  <%= horizontal_bar_chart( [1,2,3,4,5] ) %>

* Vertical

e.g. [http://bl.ocks.org/mbostock/raw/3885304/](http://bl.ocks.org/mbostock/raw/3885304/) 

<code>vertical_bar_chart( data_tsv, element='.vertical_bar_chart' )</code>

  <%= vertical_bar_chart( 'http://bl.ocks.org/mbostock/raw/3885304/data.tsv', 
                          '.vertical_bar_chart' ) %>

2. Histogram

e.g. [http://bl.ocks.org/mbostock/raw/3048450/](http://bl.ocks.org/mbostock/raw/3048450/)

<code>histogram_chart( data, element='.histogram_chart' )</code>

  <%= histogram_chart( [ 0.3868526664824069,  0.4917571016462725, 
	                       0.38783356112423817, 0.5401234418737314, 
                         0.41510852382870295, 0.46538050029079203 ], '.histogram_chart' ) %>

=========
to be continued... :)                         
