//
//  MDSleepEngine.m
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/7/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "MDSleepEngine.h"
#import "ShinobiChart+trialChart.h"


@interface MDSleepEngine () {
    bool taskRunning;
}
@end

@implementation MDSleepEngine

@synthesize ctrlrDelegate;

-(id) initWithDelegate:(id)delegate {
    self = [super init];
    
    self.ctrlrDelegate = delegate;
    
    // perform other initialization here. start task loop if necessary
    NSLog(@"Sleep Engine initialized");
    return self;
}

-(void) performTask {
    float period = 1.0;
    
    // the main run loop for this model to perform its tasks
    while (taskRunning) {
        // NSLog(@"period task that runs every %f seconds", period);
        sleep(period);
    }
}

-(void) start {
    // start run loop for task implemented by FirstModel
    taskRunning = YES;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,
                                             (unsigned long)NULL), ^(void) {
        [self performTask];
    });
}

-(void) stop {
    // stop run loop
    taskRunning = NO;
}

-(float) summary {
    // returns summary score representing status
    return 90.0;
}

-(NSArray *) dataSetFor:(MDTimePeriod)period {
    switch (period) {
        case MD_DAILY:
            return nil;
        case MD_WEEKLY:
            return nil;
        case MD_MONTHLY:
            return nil;
        case MD_YEARLY:
            return nil;
        default:
            return nil;
    }
}

#pragma mark - SChartDatasource

- (NSString *)dataTypeForIndex:(int)index
{
    NSString *title = nil;
    switch (index) {
        case 0:
            title = @"Wake";
            break;
        case 1:
            title = @"Rem";
            break;
        case 2:
            title = @"Light";
            break;
        case 3:
            title = @"Deep";
            break;
        default:
            break;
    }
    return title;
}

- (NSString *)figureTypeForIndex:(int)index
{
    NSString *type = nil;
    switch (index) {
        case 0:
            type = @"col_yellow";
            break;
        case 1:
            type = @"col_orange";
            break;
        case 2:
            type = @"col_green";
            break;
        case 3:
            type = @"col_blue";
            break;
        
            
        default:
            break;
    }
    return type;
}


- (int)numberOfSeriesInSChart:(ShinobiChart *)chart
{
    return [_sleepData dataKeys].count;
}

- (SChartSeries *)sChart:(ShinobiChart *)chart seriesAtIndex:(int)index
{
    return [chart dataSeriesForType:[self figureTypeForIndex:index] withTitle:[self dataTypeForIndex:index]];
}

- (int)sChart:(ShinobiChart *)chart numberOfDataPointsForSeriesAtIndex:(int)seriesIndex
{
    return [_sleepData times].count;
}

- (id<SChartData>)sChart:(ShinobiChart *)chart dataPointAtIndex:(int)dataIndex forSeriesAtIndex:(int)seriesIndex
{
    SChartDataPoint *dp = [SChartDataPoint new];
    dp.xValue = [[_sleepData times] objectAtIndex:dataIndex];
    dp.yValue = [[[_sleepData data] objectForKey:dp.xValue] objectForKey:[self dataTypeForIndex:seriesIndex]];
    return dp;
}


@end
