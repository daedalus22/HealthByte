//
//  MDCustomCorrView.m
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/7/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "MDCustomCorrView.h"
#import "ShinobiChart+columnChart.h"
#import <ShinobiCharts/SChartDarkTheme.h>

@implementation MDCustomCorrView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

void drawCorrBox(CGContextRef context, CGRect rect) {
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
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect paperRect = self.bounds;
    drawCorrBox(context, paperRect);
    
    //chart
    //Create a chart object capable of displaying UK weather data using columns
    columnChart = [ShinobiChart columnChartForAllDataWithFrame:self.bounds];
    columnChart.title = @"Daily Health Summary";
    
    //Enter your trial license key here
    columnChart.licenseKey = @"hnA+QbUfLfXu1BxMjAxMzA2MDhpbmZvQHNoaW5vYmljb250cm9scy5jb20=yjoZ6vFwPWWmtOCpEQgYE1zZFOiRY1tSK4sRsqcvuN/JrdD2zltNZ7dQ6X3+G2C7IABSbfozZqFPoHeTpS3f/YuJQD26iLpEaAxl1VKXZLWjo51v4523YGg4wiK5ZldPpa77w9RXD8FqS7yevK8j8w+Hss4M=BQxSUisl3BaWf/7myRmmlIjRnMU2cA7q+/03ZX9wdj30RzapYANf51ee3Pi8m2rVW6aD7t6Hi4Qy5vv9xpaQYXF5T7XzsafhzS3hbBokp36BoJZg8IrceBj742nQajYyV7trx5GIw9jy/V6r0bvctKYwTim7Kzq+YPWGMtqtQoU=PFJTQUtleVZhbHVlPjxNb2R1bHVzPnh6YlRrc2dYWWJvQUh5VGR6dkNzQXUrUVAxQnM5b2VrZUxxZVdacnRFbUx3OHZlWStBK3pteXg4NGpJbFkzT2hGdlNYbHZDSjlKVGZQTTF4S2ZweWZBVXBGeXgxRnVBMThOcDNETUxXR1JJbTJ6WXA3a1YyMEdYZGU3RnJyTHZjdGhIbW1BZ21PTTdwMFBsNWlSKzNVMDg5M1N4b2hCZlJ5RHdEeE9vdDNlMD08L01vZHVsdXM+PEV4cG9uZW50PkFRQUI8L0V4cG9uZW50PjwvUlNBS2V5VmFsdWU+";
    //Create weather data and then assign it to our datasource
    demoAllData = [DemoAllData new];
    datasource = [[Datasource alloc] init];
    datasource.alldata = demoAllData;
    columnChart.datasource = datasource;
    
    //set this controller to be the delegate for our chart
    columnChart.delegate = self;
    
    [self addSubview:columnChart];
    
    self.backgroundColor = columnChart.theme.chartStyle.backgroundColor;

    
    
}

- (void)sChart:(ShinobiChart *)chart alterTickMark:(SChartTickMark *)tickMark beforeAddingToAxis:(SChartAxis *)axis {
    if (chart.yAxis != axis && tickMark.value > 30.f) {
        //Limit second y-axis labels to max of 30
        tickMark.tickLabel.text = @"";
        tickMark.tickMarkView.hidden = YES;
    }
}


@end
