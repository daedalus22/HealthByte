//
//  SChartCartesianSeries.h
//  SChart
//
//  Copyright 2011 Scott Logic Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SChartSeries.h"
#import "SChartAnimation.h"

@class SChartAxis;

/** This is the base class for cartesian series.
 
 
 To display a cartesian series, use an appropriate subclass. */

@interface SChartCartesianSeries : SChartSeries

/** Baseline for cartesian series, on the x or y axis depending on the orientation of the data series, default is 0.0 */
@property (nonatomic, retain) NSNumber *baseline;

/** Stack Index for those series which are stackable: Bar, Column, Area, and StepLine. */
@property (nonatomic, retain) NSNumber *stackIndex;

/** When this flag is set, series will animate upon entrance */
@property (nonatomic) BOOL animated;

/** Animation duration in seconds */
@property (nonatomic) float animationDuration   DEPRECATED_ATTRIBUTE;

/** Animation curve
 
 <code>typedef enum {<br>
 SChartAnimationCurveLinear,<br>
 SChartAnimationCurveEaseIn,<br>
 SChartAnimationCurveEaseOut,<br>
 SChartAnimationCurveEaseInOut,<br>
 SChartAnimationCurveBounce,<br>
 } SChartAnimationCurve;</code>
 
 Default `SChartAnimationCurveLinear` */
@property (nonatomic)       SChartAnimationCurve   animationCurve   DEPRECATED_ATTRIBUTE;

-(SChartRange *)rangeOfDataInX;
-(SChartRange *)rangeOfDataInY;

@end
