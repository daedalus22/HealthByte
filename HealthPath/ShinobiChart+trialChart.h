//
//  ShinobiChart+trialChart.h
//  HealthPathBCBS
//
//  Created by Xiaoshan Huang on 5/10/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <ShinobiCharts/ShinobiChart.h>

@interface ShinobiChart (trialChart)

+ (ShinobiChart *)chartWithFrame:(CGRect)frame;
- (SChartSeries *)dataSeriesForType:(NSString *)type withTitle:(NSString *)title;

@end
