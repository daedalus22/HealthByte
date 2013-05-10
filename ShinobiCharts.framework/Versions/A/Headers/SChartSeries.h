//
//  SChartSeries.h
//  SChart
//
//  Copyright 2011 Scott Logic Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "SChartLegendItem.h"
#import "SChartDataSeries.h"
#import "SChartData.h"
#import "SChartDataPoint.h"
#import "SChartInternalDataPoint.h"
#import "SChartGLView.h"
#import "SChartTheme.h"

@class SChartSeriesStyle;
@class SChartDataPoint;
@class ShinobiChart;
@class SChartAnimation;

typedef enum {
    SChartSelectionNone,
    SChartSelectionSeries,
    SChartSelectionPoint
} SChartSelection;

typedef enum {
    SChartSeriesOrientationHorizontal,
    SChartSeriesOrientationVertical
} SChartSeriesOrientation;

/** 
 The SChartSeries object represents data series which are displayed in terms of cartesian coordinates
  
 
*Related Classes:*

SChartLineSeries<br>
SChartScatterSeries<br>
SChartColumnSeries<br>
SChartBarSeries<br>
 
 */

@interface SChartSeries : NSObject <SChartLegendItem> {
    SChartDataSeries *dataSeries;
    
    NSString *title;
    BOOL showInLegend;
    
    SChartSelection selectionMode;
    BOOL toggleSelection, togglePointSelection;
    BOOL selected;
}

#pragma mark -
#pragma mark Data and Axis
/* @name Data and Axis setup */

@property (nonatomic, retain) SChartDataSeries *dataSeries;

#pragma mark -
#pragma mark Status

@property (nonatomic, assign) SChartSeriesOrientation orientation;

/** Dictates whether or not a series is hidden on the chart.
 
 If the 'hidden' property of a chart series is set to `YES`, then the series will not be drawn on the chart.
 If this property is set to `NO`, the series will be drawn as usual.
 The default setting is `NO` */
@property (nonatomic)           BOOL    hidden;

/** Whether entry and exit animations are anabled for this series.
 
 If this is set to YES, series will animate in and out using their entryAnimation and exitAnimation animation properties.
 If this is set to NO, series will appear and disappear instantly, with no animation.
 The default is NO - animation disabled.
 */
@property (nonatomic)           BOOL    animationEnabled;

/** The animation which describes how the series will enter the chart.

 The chart series will enter when the chart is first drawn, or when their hidden property is set to NO (having previously been YES).
 See `SChartAnimation` for more details.
 */
@property (strong, nonatomic)   SChartAnimation     *entryAnimation;

/** The animation which describes how the series will exit the chart.
 
 The chart series will exit the chart when their hidden property is set to YES (having previously been NO).
 See `SChartAnimation` for more details.
 */
@property (strong, nonatomic)   SChartAnimation     *exitAnimation;

#pragma mark -
#pragma mark Selection Options

/** @name Selection Options */
/** What should be selected when the user taps the chart.
 
 When a tap gesture indicates a point on this series - how should the series respond. There is an important effect of choosing `SChartSelectionNone` - this option will remove this series from the algorithm that searches for the nearest point to the tap. Hence, a user may tap near to this series - but the algorithm will select a different series based upon nearest point.
 
 <code>typedef enum {<br>
 SChartSelectionNone,   //nothing happens<br> 
 SChartSelectionSeries, //the whole series is selected<br>
 SChartSelectionPoint   //the single point is selected<br>
 } SChartSelection;</code>
 
 Note that currently, selection is handled separately for radial chart series - selectionMode, toggleSelection, and togglePointSelection are only applicable to subclasses of SChartSeries.
 */
@property (nonatomic) SChartSelection selectionMode;

/** Toggle selection on or off */
@property (nonatomic) BOOL toggleSelection; 

/** Should the series only allow one selected point at a time.
 
 If this is set to 'YES', the series will de-select all other points in this series before selecting the tapped point. Setting `NO` will allow as many points to be selected as are tapped. NOTE: This is _per_ series and will allow multiple points to be selected across series regardless of value. To enable single point selection across all of the series for the chart - use the chart delegate. */
@property (nonatomic) BOOL togglePointSelection;

/** Whether or not the series is selected */
@property (nonatomic, assign) BOOL selected;


#pragma mark -
#pragma mark Crosshair
/** @name Crosshair */
/** Display a tooltip with connecting lines after the user taps-and-holds
 
 For line series, the tooltip will appear on the nearest series and interpolate values between data points. For column/bar series the crosshair will snap to the nearest column. Once a crosshair is visible - it is locked to that current series. It will ignore other series until it is dismissed and re-established on a different series. To dismiss the crosshair the user must perform a single tap on the chart. */
@property (nonatomic) BOOL crosshairEnabled;


#pragma mark -
#pragma mark Styling
/**@name Styling */
/** Override any default settings or theme settings on a _per series_ basis by editing the values in these style objects. */
@property (nonatomic, retain) SChartSeriesStyle *_style;

/** Style settings in this object will be applied when the series is marked as selected (or a point is selected).*/
@property (nonatomic, retain) SChartSeriesStyle *_selectedStyle;


#pragma mark -
#pragma mark Legend Display Options

/** @name Legend Display Options */
/** The title of the series to be displayed in the legend. */
@property (nonatomic, retain) NSString *title;

/** Whether or not the series should be represented in the legend */
@property (nonatomic, assign) BOOL showInLegend;


#pragma mark -
#pragma mark Drawing

/** Whether or not the series should be drawn on the chart.
 
 This was deprecated - use the hidden property instead.*/
- (BOOL)shouldBeDrawn DEPRECATED_ATTRIBUTE;

- (NSArray*)xValueKeys;
- (NSArray*)yValueKeys;


@end
