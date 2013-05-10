//
//  DataSource.m
//  HealthPathBCBS
//
//  Created by Chong Wang on 5/9/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

//
//  Datasource.m
//  ColumnChart

#import "Datasource.h"
#import "ShinobiChart+columnChart.h"

@implementation Datasource

//Map our data keys to series indexes
- (NSString*)keyForIndex:(int)index {
    NSString *key = nil;
    
    //this mapping determines which series are drawn first - ie:behind
    switch (index) {
        case 0:
            key = sleep;
            break;
        case 1:
            key = eat;
            break;
        case 2:
            key = minmove;
            break;
        case 3:
            key = maxmove;
            break;
        case 4:
            key = move;
            break;
        default:
            break;
    }
    return key;
}

//Implement methods from SChartDatasource
- (int)numberOfSeriesInSChart:(ShinobiChart *)chart {
    return 5;//[_alldata dataKeys].count;
}

- (SChartSeries*)sChart:(ShinobiChart *)chart seriesAtIndex:(int)index {
    return [chart allDataSeriesForKey:[self keyForIndex:index]];
}

- (int)sChart:(ShinobiChart *)chart numberOfDataPointsForSeriesAtIndex:(int)seriesIndex {
    return [_alldata times].count;
}

- (id<SChartData>)sChart:(ShinobiChart *)chart dataPointAtIndex:(int)dataIndex forSeriesAtIndex:(int)seriesIndex {
    SChartDataPoint *dp = [SChartDataPoint new];
    dp.xValue = [[_alldata times] objectAtIndex:dataIndex];
    
    if ([[self keyForIndex:seriesIndex] isEqualToString:eat]) {
        // we use the data value for the radius - this value is presentation only
        dp.yValue = [NSNumber numberWithInt:2000];
        
    } else if ([[self keyForIndex:seriesIndex] isEqualToString:maxmove]) {
    
        NSNumber *value = [[[_alldata data] objectForKey:dp.xValue] objectForKey:step];
        dp.yValue =value;

    } else if ([[self keyForIndex:seriesIndex] isEqualToString:minmove]) {
        
        // max temp is stacked on top of min temp. - remove the min temp offset
        dp.yValue =         [NSNumber numberWithFloat:0.0f];

    } else {
        dp.yValue = [[[_alldata data] objectForKey:dp.xValue] objectForKey:[self keyForIndex:seriesIndex]];
    }
    
    NSLog(@"%@ value %f\n",[self keyForIndex:seriesIndex],[dp.yValue floatValue]);
    
    
    return dp;
}

- (SChartAxis*)sChart:(ShinobiChart *)chart yAxisForSeriesAtIndex:(int)index {
    if ([[self keyForIndex:index] isEqualToString:sleep]) {
        return chart.yAxis;
    }
    return [[chart allYAxes] lastObject];
}

- (float)sChartRadiusForDataPoint:(ShinobiChart *)chart dataPointAtIndex:(int)dataIndex forSeriesAtIndex:(int)seriesIndex {
    if ([[self keyForIndex:seriesIndex] isEqualToString:eat]) {
        float radiusModifier = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad ? 0.4f : 0.5f;
        return [[[[_alldata data] objectForKey:[[_alldata times] objectAtIndex:dataIndex]] objectForKey:[self keyForIndex:seriesIndex]] floatValue] / radiusModifier;
    }
    return 0.f;
}




@end

