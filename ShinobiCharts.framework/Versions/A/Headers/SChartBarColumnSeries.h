//
//  SChartBarColumnSeries.h
//  SChart
//
//  Copyright 2011 Scott Logic Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "SChartCartesianSeries.h"
#import "SChartBarColumnSeriesStyle.h"

/** This is the base class for column and bar series - containing all of the common functions between the two. To display a bar or column series on the chart init and use one of the classes SChartBarSeries or SChartColumnSeries respectively. */
@interface SChartBarColumnSeries : SChartCartesianSeries

#pragma mark -
#pragma mark Config settings


@property (nonatomic, assign) SChartSeriesOrientation orientation;

@end
