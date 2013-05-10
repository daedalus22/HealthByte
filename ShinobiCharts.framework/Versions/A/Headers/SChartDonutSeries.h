//
//  SChartDonutSeries.h
//  SChart
//
//  Copyright 2011 Scott Logic Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SChartRadialSeries.h"
#import "SChartAnimation.h"

@protocol SChartDatasource;
@class SChartDonutSeriesStyle;

typedef enum {
    SChartRadialSeriesDrawDirectionAntiClockwise,
    SChartRadialSeriesDrawDirectionClockwise
} SChartRadialSeriesDrawDirection;

/** An SChartDonutSeries displays magnitude data on the chart - the larger the value of the datapoint, the larger the slice representing that datapoint.
 
 Whereas datapoints for Cartesian Series require an X and a Y, Radial Series require a name and a value.
 The xValue of a datapoint given to a Donut Series is used as the name of the slice, and the yValue is used as its magnitude.
 See 'SChartRadialDatapoint' for a convenience datapoint class.
 
 Tip: Styles for each individual slice can be configured in the series' SChartDonutSeriesStyle.
 Tip: Legends on donut charts show an entry for each datapoint, or slice, of a donut chart.
 
 
 *Related Classes:*
 
 SChartDonutSeriesStyle <br>
 SChartRadialSeries <br>
 SChartPieChart <br>
 SChartRadialDataPoint <br>
 
 */

@interface SChartDonutSeries : SChartRadialSeries

#pragma mark -
#pragma mark Styling
/**@name Styling */
/** Override any default settings or theme settings on a _per series_ basis by editing the values in these style objects.
 
 The `SChartDonutSeriesStyle` contains all of the objects relevant to styling a donut series. */
-(SChartDonutSeriesStyle *)style;

-(void)setStyle:(SChartDonutSeriesStyle *)style;

/** Style settings in this object will be applied when the series is marked as selected (or a slice is selected).*/
-(SChartDonutSeriesStyle *)selectedStyle;

-(void)setSelectedStyle:(SChartDonutSeriesStyle *)selectedStyle;

/** The inner radius of the series. */
@property (nonatomic)         float                  innerRadius;

/** The outer radius of the series. */
@property (nonatomic)         float                  outerRadius;

/** The position to which the slice will rotate once selected **/
@property (nonatomic, retain) NSNumber               *selectedPosition;

/** The current rotation of the series */
@property (nonatomic)         float                  rotation;

/** DEPRECATED - configure the selectionAnimation property instead.
 */
@property (nonatomic)         float                  animationDuration DEPRECATED_ATTRIBUTE;

/** DEPRECATED - configure the selectionAnimation property instead.
 */
@property (nonatomic)           SChartAnimationCurve    animationCurveType DEPRECATED_ATTRIBUTE;


/** An animation object describing the motion of a donut series when a slice is selected.
 
 The angleCurve of the animation describes any rotation of the series from its current position to its selected position.
 The radiusCurve describes the animation f any increase or decrease in the protrusion of the slice as a result of being selected or deselected.
 */
@property (nonatomic, strong)   SChartAnimation     *selectionAnimation;

/** Whether or not panning is enabled on this series.
 
 If panning is enabled, performing a swipe gesture on the series will cause it to rotate.
 The series will stay under the user's finger whilst your finger remains on the series and will continue to rotate with a velocity proportionate to the speed of the swipe gesture once the user's finger is lifted. See rotationFriction.
 The default value for this property is NO.
 */
@property (nonatomic)           BOOL                gesturePanningEnabled;

/** The amount of friction applied to this pie series after a rotation (pan) gesture finishes, and the series begins to spin.
 This is used as the percentage of decay of velocity per frame. The default value is 0.02, or 2%.
 */
@property (nonatomic)         float                  rotationFriction;

/** The direction in which data is drawn around the centre of the plot.
 
 typedef enum { <br>
 SChartRadialSeriesDrawDirectionClockwise, <br>
 SChartRadialSeriesDrawDirectionAntiClockwise <br>
 } SChartRadialSeriesDrawDirection;
 
 Default is SChartRadialSeriesDrawDirectionAntiClockwise.
 */
@property (nonatomic)       SChartRadialSeriesDrawDirection drawDirection;

/**
 By default, tapping on a radial series during panning will just stop the pan.  If this property is enabled, tapping on a slice in the series will select that slice.  This property defaults to NO.
 
 If this property is enabled, and selectedPosition is not set to a value, the donut series will keep spinning whilst a slice moves out.  The same is true for the case where a slice moves in once it is deselected.
 */
@property (nonatomic, assign) BOOL  selectionEnabledDuringPanning;

/** Creates the labels for the donut series **/
-(void)createLabels:(id <SChartDatasource>)datasource onChart:(ShinobiChart *)chart;

/** Select a slice within a series **/
-(void)setSlice:(int)sliceIndex asSelected:(BOOL)sel;

/** Draw a slice of a series **/
- (void)drawSlice:(int)sliceIndex ofTotal:(int)totalSlices fromAngle:(float)startAngle toAngle:(float)endAngle
       fromCentre:(CGPoint)centre withInnerRadius:(float)innerRadius andOuterRadius:(float)outerRadius asSelected:(BOOL)sel inFrame:(CGRect)frame;

/** Returns the center of the donut */
-(CGPoint)getDonutCenter;

/** Returns the centre of the slice at a given index within the chart as a CGPoint **/
- (CGPoint)getSliceCenter:(int)sliceIndex;

/** Returns the index of the slice at the given angle in radians 
 
 */
-(int)indexOfSliceAtAngle:(double)rads;

/** Rotates the specified slice to the specified angle in radians with the provided animation 
 
 */
-(void)rotateSliceAtIndex:(int)index toAngle:(double)rads withAnimation:(SChartAnimation *)animation ;

@end
