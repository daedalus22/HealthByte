//
//  SChartLegendStyle.h
//  SChart
//
//  Copyright 2011 Scott Logic Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


/** Styling for the default legend object SChartLegend
 
 */
@interface SChartLegendStyle : NSObject {
@private
    BOOL textAlignmentSet;
    BOOL showSymbolsSet;
    BOOL symbolAlignmentSet;
    BOOL orientationSet;
}

/** @name Styling Properties */
/** The font used for the series titles */
@property (nonatomic, retain)   UIFont *font;

/** The color of the text used to display the series titles */
@property (nonatomic, retain)   UIColor *fontColor;

/** The alignment of the series titles */
@property (nonatomic)           UITextAlignment textAlignment;

/** The font for the legend title */
@property (nonatomic, retain)   UIFont *titleFont;

/** The color for the legend title text */
@property (nonatomic, retain)   UIColor *titleFontColor;

/** The amount of padding in pixels around the inside perimeter of the legend */
@property (nonatomic, retain)   NSNumber *marginWidth;

/** The color of the border line */
@property (nonatomic, retain)   UIColor *borderColor;

/** The width of the border in pixels */
@property (nonatomic, retain)   NSNumber *borderWidth;

/** The radius of the corners on legend view.
 
 Setting a radius of `0` will draw square corners. */
@property (nonatomic, retain)   NSNumber *cornerRadius;

/** A BOOLean that indicates if symbols should be shown in the legend.

The default value is YES (symbols will be shown). Symbols are collected from the series objects through the SChartLegendItem protocol.*/
@property (nonatomic)           BOOL showSymbols;

/** Where should the symbols be drawn if showSymbols is `YES`
 
 <code>typedef enum {<br>
 SChartSeriesLegendAlignSymbolsLeft,<br>
 SChartSeriesLegendAlignSymbolsRight<br>
 } SChartSeriesLegendSymbolAlignment;</code>
 
 */
@property (nonatomic)           SChartSeriesLegendSymbolAlignment symbolAlignment;
/** The layout of the series within the legend
 
 <code>typedef enum {<br>
 SChartLegendOrientationVertical,<br>
 SChartLegendOrientationHorizontal
 } SChartLegendOrientation;</code>
 */
@property (nonatomic)           SChartLegendOrientation orientation;

@property (nonatomic, retain)   UIColor *areaColor;

@property (nonatomic, retain)   NSNumber    *horizontalPadding;
@property (nonatomic, retain)   NSNumber    *verticalPadding;

-(void)supplementStyleFromStyle:(SChartLegendStyle *)style;

-(BOOL)textAlignmentSet;

@end
