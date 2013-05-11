//
//  MDCustomCorrView.h
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/7/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ShinobiCharts/ShinobiChart.h>
#import "Datasource.h"
#import "DemoAllData.h"

@interface MDCustomCorrView : UIView <SChartDelegate> {
    
    ShinobiChart *columnChart;
    Datasource *datasource;
    DemoAllData * demoAllData;
    
}

@end
