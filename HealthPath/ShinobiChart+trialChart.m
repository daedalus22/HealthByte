//
//  ShinobiChart+trialChart.m
//  HealthPathBCBS
//
//  Created by Xiaoshan Huang on 5/10/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "ShinobiChart+trialChart.h"
#import <ShinobiCharts/SChartDarkTheme.h>

@implementation ShinobiChart (trialChart)

+ (ShinobiChart *)chartWithFrame:(CGRect)frame
{
    frame.origin.x += 20;
    frame.origin.y += 30;
    frame.size.width -= 30;
    frame.size.height -= 40;
    ShinobiChart *chart = [[ShinobiChart alloc] initWithFrame:frame];
    chart.licenseKey = @"hnA+QbUfLfXu1BxMjAxMzA2MDhpbmZvQHNoaW5vYmljb250cm9scy5jb20=yjoZ6vFwPWWmtOCpEQgYE1zZFOiRY1tSK4sRsqcvuN/JrdD2zltNZ7dQ6X3+G2C7IABSbfozZqFPoHeTpS3f/YuJQD26iLpEaAxl1VKXZLWjo51v4523YGg4wiK5ZldPpa77w9RXD8FqS7yevK8j8w+Hss4M=BQxSUisl3BaWf/7myRmmlIjRnMU2cA7q+/03ZX9wdj30RzapYANf51ee3Pi8m2rVW6aD7t6Hi4Qy5vv9xpaQYXF5T7XzsafhzS3hbBokp36BoJZg8IrceBj742nQajYyV7trx5GIw9jy/V6r0bvctKYwTim7Kzq+YPWGMtqtQoU=PFJTQUtleVZhbHVlPjxNb2R1bHVzPnh6YlRrc2dYWWJvQUh5VGR6dkNzQXUrUVAxQnM5b2VrZUxxZVdacnRFbUx3OHZlWStBK3pteXg4NGpJbFkzT2hGdlNYbHZDSjlKVGZQTTF4S2ZweWZBVXBGeXgxRnVBMThOcDNETUxXR1JJbTJ6WXA3a1YyMEdYZGU3RnJyTHZjdGhIbW1BZ21PTTdwMFBsNWlSKzNVMDg5M1N4b2hCZlJ5RHdEeE9vdDNlMD08L01vZHVsdXM+PEV4cG9uZW50PkFRQUI8L0V4cG9uZW50PjwvUlNBS2V5VmFsdWU+";
    chart.clipsToBounds = NO;
    chart.autoresizingMask = ~UIViewAutoresizingNone;
    chart.theme = [SChartDarkTheme new];
    return chart;
}

- (SChartSeries *)dataSeriesForType:(NSString *)type withTitle:(NSString *)title
{
    SChartSeries *series = nil;
    if ([type isEqualToString:@"area_blue"]) {
        SChartLineSeries *lineSeries = [SChartLineSeries new];
        lineSeries.style = [self.theme lineSeriesStyleForSeriesAtIndex:1 selected:NO];
        lineSeries.style.showFill = YES;
        lineSeries.baseline = @0;
        lineSeries.title = title;
        lineSeries.entryAnimation = [SChartAnimation growVerticalAnimation];
        lineSeries.animationEnabled = YES;
        series = lineSeries;
        
    } else if ([type isEqualToString:@"area_orange"]) {
        SChartLineSeries *lineSeries = [SChartLineSeries new];
        lineSeries.style = [self.theme lineSeriesStyleForSeriesAtIndex:2 selected:NO];
        lineSeries.style.showFill = YES;
        lineSeries.baseline = @0;
        lineSeries.title = title;
        lineSeries.entryAnimation = [SChartAnimation growVerticalAnimation];
        lineSeries.animationEnabled = YES;
        series = lineSeries;
        
    } else if ([type isEqualToString:@"area_green"]) {
        SChartLineSeries *lineSeries = [SChartLineSeries new];
        lineSeries.style = [self.theme lineSeriesStyleForSeriesAtIndex:3 selected:NO];
        lineSeries.style.showFill = YES;
        lineSeries.baseline = @0;
        lineSeries.title = title;
        lineSeries.entryAnimation = [SChartAnimation growVerticalAnimation];
        lineSeries.animationEnabled = YES;
        series = lineSeries;
        
    } else if ([type isEqualToString:@"area_yellow"]) {
        SChartLineSeries *lineSeries = [SChartLineSeries new];
        lineSeries.style = [self.theme lineSeriesStyleForSeriesAtIndex:4 selected:NO];
        lineSeries.style.showFill = YES;
        lineSeries.baseline = @0;
        lineSeries.title = title;
        lineSeries.entryAnimation = [SChartAnimation growVerticalAnimation];
        lineSeries.animationEnabled = YES;
        series = lineSeries;
        
    } else if ([type isEqualToString:@"scatter"]) {
        SChartScatterSeries *scatterSeries = [SChartScatterSeries new];
        scatterSeries.title = title;
        scatterSeries.style = [self.theme scatterSeriesStyleForSeriesAtIndex:4 selected:NO];
        scatterSeries.style.pointStyle.innerColor = [UIColor clearColor];
        scatterSeries.animationEnabled = YES;
        series = scatterSeries;
    }
    
    return series;
}

@end
