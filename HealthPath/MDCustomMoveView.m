//
//  MDCustomMoveView.m
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/7/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "MDCustomMoveView.h"
#import "ShinobiChart+trialChart.h"

@implementation MDCustomMoveView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

void drawMoveBox(CGContextRef context, CGRect rect) {
    CGRect strokeRect = CGRectInset(rect, 3.0, 3.0);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetLineWidth(context, 3.0);
    CGContextStrokeRect(context, strokeRect);
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect paperRect = self.bounds;
    drawMoveBox(context, paperRect);
    
    ShinobiChart *chart = [ShinobiChart chartWithFrame:self.bounds];
    SChartCategoryAxis *xAxis = [SChartCategoryAxis new];
    xAxis.title = @"Hours";
    xAxis.style.majorGridLineStyle.showMajorGridLines = NO;
    xAxis.style.majorTickStyle.tickLabelOrientation = TickLabelOrientationHorizontal;
    xAxis.enableGesturePanning = YES;
    chart.xAxis = xAxis;
    
    SChartNumberRange *yAxisRange = [[SChartNumberRange alloc] initWithMinimum:[NSNumber numberWithInt:0] andMaximum:[NSNumber numberWithInt:299]];
    SChartNumberAxis *yAxis = [[SChartNumberAxis alloc] initWithRange:yAxisRange];
    //    yAxis.title = @"MovementIndex";
    yAxis.axisPosition =  SChartAxisPositionReverse;
    yAxis.style.majorGridLineStyle.showMajorGridLines = YES;
    chart.yAxis = yAxis;
    
    chart.backgroundColor = [UIColor clearColor];
    chart.plotAreaBackgroundColor = [UIColor clearColor];
    chart.alpha = 1;
    
    _moveChart = chart;
    _moveEngine = [[MDMoveEngine alloc] init];
    _moveData = [MDMoveData new];
    _moveEngine.moveData = _moveData;
    _moveChart.datasource = _moveEngine;
    _moveChart.delegate = self;
    [self addSubview:_moveChart];
}


@end
