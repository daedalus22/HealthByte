//
//  DataSource.h
//  HealthPathBCBS
//
//  Created by Chong Wang on 5/9/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <ShinobiCharts/ShinobiChart.h>
#import "AllData.h"

@interface Datasource : NSObject <SChartDatasource>

@property (nonatomic) id<AllData> alldata;

@end
