###Overview###
This document provides an overview of the ShinobiCharts control.  It describes the features of the control and its associated concepts.

ShinobiCharts provides a quick and effective way to display cartesian or radial data in an iOS application.  The chart contains a plot area, upon which a set of chart series are displayed.  Each series contains a set of data points.  A chart can display a number of different types of chart series simultaneously.

The plot area is surrounded by axes which define the dimensions of the data specified.  Each axis has a range describing the data being displayed.  Furthermore, ShinobiCharts allows the modification of the axis display by providing zoom and pan interaction out of the box.

##Quick Start Guide##
###Introduction###
This is a brief introduction to using the ShinobiCharts component. We will take you through a series of simple steps introducing the key features of the charting library. 

Firstly we will look at getting a basic line graph onto a page and then follow on by looking at how to apply basic styling to the graph elements. The end result of this little tutorial should be a chart that looks something like this:

<img src="Images/quickstart1.png" alt="What we're aiming for"/>

###Draw a Simple Chart###
First we need to create a new Single View Application in Xcode. 

1. Start a new Single View Application project in Xcode called ShinobiChartsQuickStart.
2. Add references the following frameworks;
   - ShinobiCharts.framework
   - Security.framework (Trial Version only)
   - QuartzCore.framework
   - OpenGLES.framework

Lets open up the UIViewController and declare a ShinobiChart object. This is the primary ShinobiCharts object and can be treated like any other UIView.

	#import <UIKit/UIKit.h>
	#import <ShinobiCharts/ShinobiChart.h>
	#import "ShinobiChartsDataSource.h"
 
	@interface ShinobiChartsQuickStartViewController : UIViewController{ 
    	ShinobiChart *chart;
	}
	@end

Now if we go to the viewDidLoad method in the UIViewController we can initialize the chart and give it a title. For simplicity we are making the chart the full size of the UIViewController.

	// Create the chart
    chart = [[ShinobiChart alloc] initWithFrame:self.view.bounds];
    chart.title = @"My First Chart";
    
As Shinobi chart objects are UIViews we can set the resizing mask to allow it to automatically resize when the screen orientation changes.

	chart.autoresizingMask = ~UIViewAutoresizingNone;
	
The main parts of a ShinobiChart object can be configured via some key properties on the chart object. For example, we'll need to add the axes and data source. In this example we want to chart three line series on linear numeric scales. For now we will add the axes and we come back to the data source a little bit later.

	// Use a number axis for the x axis.    
	SChartNumberAxis *xAxis = [[SChartNumberAxis alloc] init];
	chart.xAxis = xAxis;
	[xAxis release];
 
	// Use a number axis for the y axis.
	SChartNumberAxis *yAxis = [[SChartNumberAxis alloc] init];
	chart.yAxis = yAxis;
	[yAxis release];

So with the exception of the data, the chart is set up, all we need to do now is add it to the UIViewController.

	// Add the chart to the view controller
    [self.view addSubview:chart];

###Adding a Datasource###
Now we have our chart we need to add some data. Adding data to a ShinobiChart is a simple as adding data to a UITableViewController, all you need to do is give it a data source. To keep things simple, we're going to use our view controller as the datasource - we just need to add the protocol in the .h file: 

	@interface ShinobiChartsQuickStartViewController : UIViewController < SChartDatasource >
	
The SChartDatasource protocol has 4 required methods, we will look at them one at a time.

The first method is used to determine the number of series we want the chart to contain.  In this example we want 3.

	// Returns the number of series in the specified chart
	- (int)numberOfSeriesInSChart:(ShinobiChart *)chart {
    	return 3;
	} 

The next method is used to assign series to our chart at the specified series index. In this example we are going to create a new SChartLineSeries for each series:

	// Returns the series at the specified index for a given chart
	-(SChartSeries *)sChart:(ShinobiChart *)chart seriesAtIndex:(int)index {
     
    	// In our example all series are line series.
    	SChartLineSeries *lineSeries = [[[SChartLineSeries alloc] init] autorelease];
     
    	// Set up the series
    	lineSeries.title = [NSString stringWithFormat:@"y = x ^ %d", index+1];
         
    	return lineSeries;
	}
(Note that you won't need the autorelease if you're using ARC.)

This method is used to determine the number of data points that the series will contain. In this example we want all of the series to have 100 data points:

	// Returns the number of points for a specific series in the specified chart
	- (int)sChart:(ShinobiChart *)chart numberOfDataPointsForSeriesAtIndex:(int)seriesIndex {
    	// In this example each series has 100 points
    	return 100;
	}

The last required method required by the SChartDatasource protocol determines the data points used in the chart series. For this example we have 3 series. We are going to use these series to plot the functions y = x, y = x2 and y = x3. To do this we need to create data points with the appropriate x and y values. 

Note: For this example we want the values to range between 0 and 2 and as we have 100 data points in each series we can simply divide the dataIndex by 50 to achieve this.

	// Returns the data point at the specified index for the given series/chart.
	- (id<SChartData>)sChart:(ShinobiChart *)chart dataPointAtIndex:(int)dataIndex forSeriesAtIndex:		(int)seriesIndex {
     
    	//Construct a data point to return
    	SChartDataPoint *datapoint = [[[SChartDataPoint alloc] init] autorelease];
     
    	double xValue = dataIndex /50.0;
    	datapoint.xValue = [NSNumber numberWithDouble:xValue];
    	datapoint.yValue = [NSNumber numberWithDouble:pow(xValue, seriesIndex + 1)];
     
    	return datapoint;
	}

Again, you won't need the autorelease if you're using ARC.  Next we need to initialise the data source and assign it to the chart inside the viewDidLoad method of the UIViewController before adding it to the view.

	chart.datasource = self;
	
Excellent, you know have your first ShinobiChart complete with data. But don't go anywhere just yet, we still need to style the chart a bit to make it a little bit more exciting.

###Adding Labels and Basic Styling###
The chart in its current state is a little plain. This section will build on the simple chart that we have and add some styling to it.  So at this point your app should look a little something like this:

<img src="Images/quickstart2.png" alt="Basic chart"/>

Not exactly thrilling!  So let's spruce it up a bit.  Firstly we will want to label the axes. To do this we can simply use the title property on the axis object. Modify the axis creation code to include a title for the axes as shown below.

	// Use a number axis for the x axis.    
	SChartNumberAxis *xAxis = [[SChartNumberAxis alloc] init];
	xAxis.title = @"X-Axis";
	chart.xAxis = xAxis;
	[xAxis release];
 
	// Use a number axis for the y axis.
	SChartNumberAxis *yAxis = [[SChartNumberAxis alloc] init];
	yAxis.title = @"Y-Axis";
	chart.yAxis = yAxis;
	[yAxis release];

Previously we gave each of the line series a title. In order for those to appear on the chart we need to show the legend.

	// Show the legend
	chart.legend.hidden = NO;
	
Next we will look at adding a bit more color to the graph. The first thing we are going to do is to increase the width of the lines. If we go back to the series creation code we can set the lineWidth on the series using the style property.

	// Set up the series
	lineSeries.title = [NSString stringWithFormat:@"y = x ^ %d", index+1];
	lineSeries.style.lineWidth = [NSNumber numberWithInt:4];
	
To make the first series stand out a bit more we are going to fill the area under the line using an orange to yellow gradient fill.

	// Customise the series at index 0
	if (index == 0) {
    	lineSeries.style.showFill = YES; 
    	lineSeries.style.areaColor = [UIColor orangeColor];
    	lineSeries.style.areaColorLowGradient = [UIColor yellowColor];
	}

The styling changes we have made here are very basic. However, it is possible to radically change the way the chart looks through the user of advanced styling techniques. For more information and examples take a look at the samples shipped with the component.

<img src="Images/quickstart3.png" alt="End result"/>

##Shinobi Chart Control Overview##
This section describes the features and concepts which constitute a chart.

###The Anatomy of the chart
There are a number of core components which make up a chart.  These are:

- Title: Each chart can have a single title which may be displayed at the top of the chart.
- Plot Area: The main area of the chart in which the data is rendered is referred to as the plot area.
- Chart Series: The chart renders the data provided to it via one or more chart series.  These are components which determine the visual representation of the data. For example, a line series will render the data as a line chart, a column series will render it as vertical bars, and so on.  Multiple different chart series may be added to the same chart simultaneously.
- Axes: A cartesian chart must have at least one X and one Y axis, but may have an arbitrary number of either, on either side of the chart.
- Legend: A chart may optionally display a legend associating a series with a title for additional information.
- Annotations: ShinobiCharts supports additional visual cues being overlaid on the chart through the use of annotations.  These could take the form of shapes, markers, text or other visual display.  These are only supported in the premium version of ShinobiCharts.
- Datasource: The datasource is the class responsible for supplying the raw data to the chart.
- Delegate: This is an optional protocol that can be adopted and attached to the chart to be notified of key events taking place on the chart.

In order to use the chart you will typically perform the following tasks:

- Set the chart `datasource` property - this is used to provide data to the chart and construct appropriate chart series to display that data.
- Set the axes on the chart.  For cartesian charts, the chart needs at least one x-axis and one y-axis in order to display properly.
- (Optionally) Set the chart `delegate` property - this is used to respond to a user's interactions with the chart.

###The Datasource###
In order to render data within the chart you need to supply a 'source' of data.  You supply the object which acts as the datasource to the chart by setting the `datasource` property.  This object must adopt the `SChartDatasource` protocol.

The `SChartDatasource` protocol contains a number of methods which must be implemented.  These are as follows:

- `numberOfSeriesInSChart:` This informs the chart of how many series it will be displaying.
- `sChart:seriesAtIndex:` The datasource will provide the chart with one or more chart series.  This returns the chart series identified by the index provided.
- `sChart:numberOfDataPointsForSeriesAtIndex:` The different series in a chart can each contain a different number of data points.  This returns the number of data points in the series at the specified index in the chart.
- `sChart:dataPointAtIndex:forSeriesAtIndex:` This returns the data point at the specified index from the specified series in the chart.

The `SChartDatasource` protocol also has optional methods to allow you to specify custom behavior for series in the chart, determine which series are rendered against which axes and optionally provide all the data for a series in a single array rather than point by point.  See the API documentation for more details on this.

####SChartData####
`SChartData` is a protocol that allows any object to act as a data point for a ShinobiChart. This is useful as existing model objects can be made to conform to the protocol and then given directly to the chart to avoid duplication of memory. The datasource will then avoid having to create a new `SChartDataPoint` for every model object that already exists. The protocol ensures that you return a default x and y value.  The protocol does provide the option of returning additional x and y values based on a given key - useful for series types which require multiple data values, such as OHLC and candlestick charts for example. 

###The Axes###
Axes on a ShinobiChart are instances of `SChartAxis`.  If a chart is displaying cartesian data, it must have at least one x-axis and one y-axis, but may have more. There are multiple types of axis that can be used on a chart. These are:

-	`SChartCategoryAxis` works with discrete data points that have no linear correlation between their values.
-	`SChartDateTimeAxis` works with time-based data points that use NSDate as their axis value.
-	`SChartDiscontinuousDateTimeAxis` a subclass of `SChartDateTimeAxis` that allows the specification of time periods to exclude (Premium Edition only).
-	`SChartNumberAxis` works with number-based data points that use NSNumber as their axis value.
-	`SChartDiscontinuousNumberAxis` a subclass of `SChartNumberAxis` that allows the specification of number ranges to exclude.
-	`SChartLogarithmicAxis` a subclass of `SChartNumberAxis` that shows values logarithmically (Premium Edition only).

When we create a chart, we add axes to it.  To create a pair of x/y axes, and attach them to a chart, we could use the following code:
	
	chart.xAxis = [[[SChartNumberAxis alloc] init] autorelease];
	chart.yAxis = [[[SChartNumberAxis alloc] init] autorelease];
	
Each chart axis contains a range.  It can either be set to a desired range, or can be left to calculate its own maximum and minimum from the data in the chart.  If you wish to explicitly set the range on a chart axis, you can call one of the `setRangeWithMinimum:andMaximum:` methods available on the `SChartAxis` API.   You can also create an axis with a range.  An example of this is shown below, using `SChartNumberAxis`:

	SChartNumberRange *range = [[[SChartNumberRange alloc] initWithMinimum:[NSNumber numberWithInt:0] andMaximum:[NSNumber numberWithInt:100]] autorelease];
	SChartAxis *axis = [[[SChartNumberAxis alloc] initWithRange:range] autorelease];

####Zooming and Panning####
An axis object defines how data values are mapped to pixel values on screen.  One of things that can affect this is the zoom and pan states of the chart and hence these are handled by the axes. Zoom and pan interactions are configured per axis. This allows interaction to be axis independent, meaning it is possible to have zoom and pan enabled on an x-axis, with y-axes remaining fixed (or vice versa). 

Zoom and pan interactions can have momentum.  When momentum panning is enabled, fast pan gestures will cause the chart to continue to pan during a brief 'slowing down' period rather than stopping immediately.  This behavior can be set using the `enableMomentumPanning` property on the axis.  The same pattern is used for momentum zooming.

As well as normal panning and zooming interactions, you can configure how your chart responds to double taps.  By default, when you double tap on a chart, it will zoom in by a set amount.  You can configure your chart to reset its zoom level when double tapped by setting the `gestureDoubleTapResetsZoom` property on it.  Alternatively, you can disable double tap gesture recognition on a chart by setting the `gestureDoubleTapEnabled` property to NO.

####Tick Marks####
The chart axis contains a set of tick marks and their labels.  These can be auto-calculated, or set to specific values.  `SChartAxis` contains two properties - `majorTickFrequency` and `minorTickFrequency`.  If `majorTickFrequency` is set to a value, the chart will not make any auto-calculations for major tick marks, and will only display a major tick mark at this frequency, regardless of zoom level.  The same pattern is followed for minor tick marks if `minorTickFrequency` is set.

Tick marks on an axis are instances of `SChartTickMark`.  This class contains the view for the tick mark, and the label for the tick mark.

####Range Padding####
Sometimes it is desirable for the data not to render right to the edge of the chart, but rather to leave a bit of margin.  In such circumstances, an alternative to expanding the range is to set a padding amount on the range by setting the axis' `rangePaddingHigh` and `rangePaddingLow` values.  The types of these must match the axis type (or in the case of a date axis must be of type `SChartDateFrequency`).

###The Chart's Series###
The `SChartSeries` class defines a base class for every series type that can be placed on a ShinobiChart. A series is responsible for the visual presentation of a set of data points on a chart. There are two main types of series - `SChartCartesianSeries` and `SChartRadialSeries`.  Cartesian series display data defined with x and y values, while radial series display data defined with radius and angle values. 

Pie and donut chart series are special cases of radial series. Their data points only have an angle and they have a fixed radius. The xValue of a datapoint given to a Pie/Donut Series is used as the name of the slice, and the yValue is used as its magnitude. Currently pie and donut are the only radial series supported.

####Series Types#####
There are multiple series types available as standard:

-	Cartesian:
	-	`SChartLineSeries` draws data points and connects them to construct a line series.  The display of individual points may be enabled or disabled as required.  Similarly the area fill under the line may be enabled or disabled as required.
	-	`SChartScatterSeries` draws data points independently on the chart, with no connections.
	-	`SChartColumnSeries` draws data points as vertical columns on the chart.
	-	`SChartBarSeries` draws data points as horizontal bars on the chart.
	-	`SChartBandSeries` draws two lines and can shade the area between them (Premium Edition only).
	-	`SChartCandleStickSeries` draws candlestick data points (Premium Edition only).
	-	`SChartOHLCSeries` draws Open High Low Close data points (Premium Edition only).
	-	`SChartStepLineSeries` draws a stepped line chart.
-	Radial:
	-	`SChartPieSeries` draws data points as pie slices around a central point.
	-	`SChartDonutSeries` draws data points as donut slices around a central point.

It is possible to create a new series type by creating a subclass of `SChartSeries`, `SChartRadialSeries` or `SChartCartesianSeries`, and custom drawing the data points using OpenGL, however that is beyond the scope of this document.

###Adding a Chart to an Application###
A ShinobiChart is a UIView.  To display it in our application, we add it to our view hierarchy.  The code snippet below shows the simplest case of creating a chart, and adding it to a parent view.

	self.chart = [[[ShinobiChart alloc] initWithFrame:chartFrame] autorelease];
    [self.view addSubview: self.chart];
    
Like other UIViews, we create the chart with a frame.  In this case, `chartFrame` is a CGRect we have initialized elsewhere.

There are other init methods we can use to initialize a chart.  The other options are:

- `initWithFrame:withTheme:` As well as specifying the frame, we also tell the chart what theme it should use.
- `initWithFrame:withPrimaryXAxisType:withPrimaryYAxisType:` As well as specifying the frame, we tell the chart the type of axes it should use.
- `initWithFrame:withTheme:withPrimaryXAxisType:withPrimaryYAxisType:` In this method, we specify all the main properties of the chart at initialization time.

If we have created a chart without specifying the type of axes it should use, we need to set the axes on the chart in the next step.  The code snippet below shows how to set the chart to use a date/time axis for its x-axis, and a numeric axis for its y-axis.

	self.chart.xAxis = [[[SChartDateTimeAxis alloc] init] autorelease];
    self.chart.yAxis = [[[SChartNumberAxis alloc] init] autorelease];
    
As well as requiring axes, the chart also requires a datasource to supply its data.  We do that next.

	self.chart.datasource = datasource;

In the code snippet above, we have assumed that we have created the chart datasource elsewhere.  The datasource can be any object which adopts the `SChartDatasource` protocol.

###Rendering the Chart###
Like any UIView, chart drawing occurs on an as-needed basis.  When a chart is first shown, or when all or part of it becomes visible due to layout changes, the system asks the chart to draw its contents.

To tell the chart to redraw, you can call the `redrawChart` or `redrawChartAndGL:` methods on the chart.

###Reloading Chart Data###
The data contained within the chart is only recalculated as needed.  If your data has changed, you call the `reloadData` method on the chart.  This tells the chart that it will need to refresh its data next time it renders.

When you tell the chart to reload its data, it goes through two stages.  First it queries its datasource for the new data it should display, and then it recalculates its data.

###The Delegate###
The ShinobiChart has a `delegate` property which follows the standard UIKit pattern for notifying your application when the user interacts with the chart.  In order to react to user interaction on the chart, you need to supply the chart with a class that adopts the `SChartDelegate` protocol.

The delegate has methods to allow you to react to the following types of interaction on the chart:

- Zooming.
- Panning.
- Touch events.
- Crosshair tracking.
- Rendering of data in the chart.
- Chart series animation.
- Data loading.

The protocol also allows the delegate to customize the tick marks on each axis of a chart.

###Legend###
The chart's legend is a view that displays a representation of the series on the chart. This can be positioned in a variety of different places on the chart, including inside and outside of the plot area. It is possible to create a custom legend by subclassing `SChartLegend` and overriding the `drawLegend` method.

###Crosshair###
The `SChartCrosshair` provides a small circle target with lines that extend to the axis and is enabled with a tap-and-hold gesture. The crosshair will snap to data points if the `interpolatePoints` property is set to NO. If set to YES the crosshair will move smoothly between points when tracking a line series. To enable the crosshair, you must set the `crossHairEnabled` property to YES on each series you wish the crosshair to be available for.

###Styling a Chart###
Themes are a way to style an entire chart and reuse these styles across multiple charts in one central location. ShinobiCharts comes with two themes. The default theme, defined in `SChartLightTheme`, is brighter colors based on a white background, while the dark theme, defined in `SChartDarkTheme`, is based on softer colors on a black background. Creating your own customized theme can be achieved by subclassing one of these themes and modifying it. It can then be applied across all charts in the application. 

Every UI element in a ShinobiChart has a style property, including the chart itself, the axes, each series type, the crosshair, the legend, the gridlines and the title. These style properties can be used to style a chart and customize the look and feel. These styles have various different properties and can be used in conjunction with setting the theme on your chart. A property set in a style will *always* take precedent over a theme.

##Lifecycle of a Chart##
In this section we will describe what happens when you add a chart to your application.

The first time a chart renders, or if you have told the chart to reload its data, it will query the datasource for the data to draw the chart.  This involves the following steps:
   
- The chart calls `sChartWillStartLoadingData:` on its delegate.
- The chart queries its datasource for the number of series.
- The chart then queries the datasource for the data in each series.  For each series, it goes through the following steps:

   - First it calls `sChart:seriesAtIndex:` on the datasource to get the series object.
   - Then it calls `sChart:numberOfDataPointsForSeriesAtIndex:` on the datasource to get the number of data points in the series.
   - Once the chart knows the number of data points in the series, it gets the data points from the datasource.  If the datasource provides the data points as an array, it gets this array from the datasource by calling `sChart:dataPointsForSeriesAtIndex:`.  If not, the chart loops through and calls `sChart:dataPointAtIndex:forSeriesAtIndex:` for each data point.  The chart populates the series with these data points.

Once the chart has loaded all its data from its datasource, it does the following:

- The chart updates its axes from the new data.
- The chart calls `SChartDidFinishLoadingData:` on its delegate.

Once the data is loaded, and the axes have been updated, the chart renders its plot area.

- First, it calls `sChartRenderStarted:withFullRedraw:` on its delegate.  The second argument indicates whether the chart is recalculating the layout of its elements.  The chart will perform calculations on the data if it has loaded new data or if this is the first time it is rendering.
- The chart then uses the calculated data to render the series.
- Once all the data has been rendered, the chart calls `sChartRenderFinished:` on its delegate.

###Chart Delegate Methods###
As described in the section above, the chart keeps its delegate informed throughout its lifecycle.  In this section, we describe some of the possible use cases for the delegate methods:

- `sChartWillStartLoadingData:` This is called before the chart starts loading its data from its datasource.  At this point, the chart has been created, but it either doesn't contain any data, or it is about to reload its data.  You shouldn't do anything with chart axes at this point, as they will be out of date with the new data.  A common use case for this method would be to pop up an activity indicator if you think the data will take a long time to load.
- `sChartDidFinishLoadingData:` This is called once the chart has finished loading its data, and before it starts rendering its plot area and axes.  A common use of this method would be to close the activity indicator if you popped one up during loading.  At this point, the chart axes will have been refreshed from the new data, so you could update the chart axes here before they are rendered.  It is important to note that this method is only called when we load data, rather than each time the chart is rendered.
- `sChartRenderStarted:withFullRedraw:` This is called before the chart starts rendering its data.  At this point, the chart axes will be up to date with your data, so a common use case of this method would be to update the chart axes before they are rendered, for example to modify the axis title or range. 
- `sChartRenderFinished:` This is called once the chart has finished rendering its data.  A common use case for this method would be to display the crosshair on the chart after it has rendered, or to add annotations onto the chart.  You could also update other UI elements in your application so that they reflect the new state of the chart.  You shouldn't modify the chart plot area or its axes here, as any changes won't be visualized until the next time that the chart is rendered.
