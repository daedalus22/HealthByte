//
//  MDSleepEngine.h
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/7/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDEngineProtocol.h"
#import <ShinobiCharts/ShinobiChart.h>


@interface MDSleepEngine : NSObject <SChartDatasource>

@property (weak, nonatomic) id ctrlrDelegate;
@property (nonatomic) id<SleepData> sleepData;


-(id) initWithDelegate:(id)delegate;
-(void) start;
-(void) stop;

-(float) summary;
-(NSArray *) dataSetFor:(MDTimePeriod)period;

@end
