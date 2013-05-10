//
//  SChartAnimation.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 26/11/2012.
//
//

#import <Foundation/Foundation.h>
#import "SChartAnimationCurve.h"

typedef enum {
    SChartAnimationCurveLinear,
    SChartAnimationCurveEaseIn,
    SChartAnimationCurveEaseOut,
    SChartAnimationCurveEaseInOut,
    SChartAnimationCurveBounce,
} SChartAnimationCurve;

/**
 An SChartAnimation object determines how an SChartSeries is animated.
 
 The SChartAnimation object is composed of several objects conforming to the SChartAnimationCurve protocol,
 which each describe the transition of an aspect of the chart series from the start of the animation to the end.
 
 Depending on the action which an animation is linked to, it may be triggered by different actions:
 
 Entry Animations are triggered upon the initial addition of the series to the chart and when a series is unhidden using its hidden property.
 
 Exit Animations are triggered when a series is hidden using its hidden property.
 
 
 <br>Example Usage - setting a series to fade in when entering and fade out when exiting over 3 seconds:
 
 <code>
 SChartAnimation *animation = [ SChartAnimation fadeAnimation ];<br>
 animation.duration = @3;<br>
 series.entryAnimation = [ animation copy ];<br>
 series.exitAnimation = [ animation copy ];<br>
 </code>
 
 
 <br>DEPRECATED:
 
 <code>typedef enum {<br>
 SChartAnimationCurveLinear,<br>
 SChartAnimationCurveEaseIn,<br>
 SChartAnimationCurveEaseOut,<br>
 SChartAnimationCurveEaseInOut,<br>
 SChartAnimationCurveBounce,<br>
 } SChartAnimationCurve;</code>
 
 */

@interface SChartAnimation : NSObject <NSCopying>

#pragma mark -
#pragma mark Creating Animations
/** @name Creating Animations */

/** Returns an animation where the series scales from its centre (the normalised X and Y are both set to 0.5f).
 
 This is the default entry + exit animation for SChartScatterSeries, SChartDonutSeries, and SChartPieSeries.
 */
+(SChartAnimation *)growAnimation;


/** Returns an animation where the series scales from its leftmost point.
 
 This is the default entry + exit animation for SChartBarSeries.
 If a baseline is set on an bar series, and a custom origin has not been set, the baseline will be used as the origin instead.
 */
+(SChartAnimation *)growHorizontalAnimation;


/** Returns an animation where the series scales from its lowest point.
 
 This is the default entry + exit animation for SChartColumnSeries, SChartOHLCSeries, and SChartCandlestickSeries.
 If a baseline is set on a column, OHLC, or candlestick series, and a custom origin has not been set, the baseline will be used as the origin instead.
 */
+(SChartAnimation *)growVerticalAnimation;


/** Returns an animation where the series fades.
 
 */
+(SChartAnimation *)fadeAnimation;


/** Returns an animation where the series mimics the entrance/exit of the picture of an old television.
 
 By default, the point of entry/exit is the centre of the series (the normalised X and Y are both set to 0.5f).
 This is the default entry + exit animation for SChartLineSeries, SChartStepLineSeries, and SChartBandSeries.
 */
+(SChartAnimation *)televisionAnimation;

/** Returns an animation where the series rotates with a bounce and changes its protrusion with a bounce.
 
 This is the default selection animation for SChartDonutSeries and SChartPieSeries.
 */
+(SChartAnimation *)radialSelection;


#pragma mark -
#pragma mark Configuring Curves
/** @name Configuration Animation Curves */

/** The overall animation curve for the animation.
 
 Setting this curve will set each of the other curves for the animation to this same curve.
 */
@property (strong, nonatomic)   id <SChartAnimationCurve>    curve;


/** The animation curve describing the transition of the series parallel to the xAxis
 
 This curve describes how the xValues of the series scale from some origin along the xAxis at the start of the animation to
 their destination at the end of the animation.
 An xScale value of 0 maps a point at the animation origin whereas a value of 1 maps the point at it's true value perpendicular to the xAxis.
 */
@property (strong, nonatomic)   id <SChartAnimationCurve>    xScaleCurve;


/** The animation curve describing the transition of the series parallel to the yAxis
 
 This curve describes how the yValues of the series scale from some origin along the yAxis at the start of the animation to
 their destination at the end of the animation.
 An yScale value of 0 maps a point at the animation origin whereas a value of 1 maps the point at it's true value perpendicular to the yAxis.
 */
@property (strong, nonatomic)   id <SChartAnimationCurve>    yScaleCurve;


/** The animation curve describing the transition of the series around the origin of the radial series.
 
 This curve describes how the points of the series rotate around the centre of the series from some initial angle at the start of the animation
 to a destination angle at the end of the animation.
 An angle scale value of 0 maps to the original angle whereas a value of 1 maps to the destination angle.
 This curve only applies to radial chart series.
 */
@property (strong, nonatomic)   id <SChartAnimationCurve>    angleCurve;


/** The animation curve describing how the radius/radii of the series change during the animation.
 
 This curve describes both the xValues and yValues of a series scale from some origin to their true values.
 It is mostly used for radial series, often in conjunction with an origin at the centre of the radial series.
 Setting this curve will override any previously set xScaleCurve and yScaleCurve.
 */
@property (strong, nonatomic)   id <SChartAnimationCurve>    radiusCurve;


/** The animation curve describing how the transparency of the series changes during the animation.
 
 This curve describes how the alpha value of the colors of the series scale from some initial alpha value at the start of the animation
 to some destination alpha at the end of the animation.
 We multiply the value returned by this curve with the colors set to the series, therefore a curve value of 0 results in a completely transparent color and a value of 1 results in the final alpha value of the series color.
 This curve applies to both cartesian and radial series.
 */
@property (strong, nonatomic)   id <SChartAnimationCurve>    alphaCurve;

#pragma mark -
#pragma mark Configuring Duration
/** @name Configuration Animation Duration */

/** The duration of the animation.
 
 The time taken, in seconds, for the animation to progress from start to finish.
 The duration of the animations returned by the factory methods provided is 2.4 seconds.
 The duration of an animation created via alloc/init is 1/64 seconds (instant).
 Use this property to configure how long an animation should take to complete.
 */
@property (strong, nonatomic)   NSNumber    *duration;

#pragma mark -
#pragma mark Configuring Origins
/** @name Configuration Animation Origin */

/** If this property is set, this will be the origin value in X in data terms - a curve returning 0 maps to this value, whereas a curve returning 1 maps to the final true value.
 
 Points will scale from this value along the xAxis in either direction.
 If this property is not set, the animation will use a normalised origin on x - see normalisedOriginX.
 */
@property (strong, nonatomic)   id  absoluteOriginX;


/** If this property is set, this will be the origin value in Y in data terms - a curve returning 0 maps to this value, whereas a curve returning 1 maps to the final true value.
 
 Points will scale from this value along the yAxis in either direction.
 If this property is not set, the animation will use a normalised origin on y - see normalisedOriginY.
 */
@property (strong, nonatomic)   id  absoluteOriginY;


/** This property enables you to set a normalised point of origin along the xAxis for the animation.
 
 This value is normalised using the range of the series which the animation is applied to.
 For example, setting a normalisedOriginX of 0.f would cause the series to animate from its leftmost point.
 Setting a normalisedOriginX of 1.f would cause the series to animate from its rightmost point.
 If an absoluteOriginX is set, this property will be ignored.
 */
@property (nonatomic)   float    normalisedOriginX;


/** This property enables you to set a normalised point of origin along the yAxis for the animation.
 
 This value is normalised using the range of the series which the animation is applied to.
 For example, setting a normalisedOriginY of 0.f would cause the series to animate from its lowest point.
 Setting a normalisedOriginY of 1.f would cause the series to animate from its highest point.
 If an absoluteOriginY is set, this property will be ignored.
 */
@property (nonatomic)   float    normalisedOriginY;


@end
