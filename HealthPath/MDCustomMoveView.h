//
//  MDCustomMoveView.h
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/7/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MDMoveEngine.h"
#import "MDMoveData.h"

@interface MDCustomMoveView : UIView <SChartDelegate>
@property (strong, nonatomic) ShinobiChart *moveChart;
@property (strong, nonatomic) MDMoveEngine *moveEngine;
@property (strong, nonatomic) MDMoveData *moveData;

@end
