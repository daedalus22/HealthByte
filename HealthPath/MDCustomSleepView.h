//
//  MDCustomSleepView.h
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/6/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MDSleepEngine.h"
#import "MDSleepData.h"

@interface MDCustomSleepView : UIView <SChartDelegate>
@property (strong, nonatomic) ShinobiChart *sleepChart;
@property (strong, nonatomic) MDSleepEngine *sleepEngine;
@property (strong, nonatomic) MDSleepData *sleepData;

static inline double radians (double degrees) { return degrees * M_PI/180; }

@end
