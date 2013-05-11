//
//  ShinobiChart+columnChart.m
//  ColumnChart

#import "ShinobiChart+columnChart.h"
#import "AllData.h"
#import <ShinobiCharts/SChartDarkTheme.h>

@implementation ShinobiChart (columnChart)

+ (ShinobiChart*)columnChartForAllDataWithFrame:(CGRect)frame {
    
    BOOL iPad = UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad;
    
    if (iPad) {
        frame.origin.x += 10;
        frame.origin.y += 50;
        frame.size.width -= 50;
        frame.size.height -= 100;
    } else {
        frame.origin.x += 5;
        frame.origin.y += 5;
        frame.size.width -= 10;
        frame.size.height -= 10;

    }
    
    ShinobiChart *chart = [[ShinobiChart alloc] initWithFrame:frame];
    chart.clipsToBounds = NO;
    chart.autoresizingMask = ~UIViewAutoresizingNone;
    
    //We want to use the darker theme
    chart.theme = [SChartDarkTheme new];
    
    //Setup category axis for x-axis - each category to represent a month
    SChartCategoryAxis *xAxis = [SChartCategoryAxis new];
    xAxis.title = @"Time";
    xAxis.style.majorGridLineStyle.showMajorGridLines = NO;
    xAxis.style.majorTickStyle.tickLabelOrientation = TickLabelOrientationDiagonal;

    chart.xAxis = xAxis;
    
    //Our chart will have two y-axis - one on left and one on right
    
    //Setup rainfall y-axis on left of chart
    SChartNumberRange *sleepRange = [[SChartNumberRange alloc] initWithMinimum:[NSNumber numberWithInt:0] andMaximum:[NSNumber numberWithInt:12]];
    SChartNumberAxis *sleepAxis = [[SChartNumberAxis alloc] initWithRange:sleepRange];
    sleepAxis.title = @"Sleep Time (hour)";
    sleepAxis.style.majorGridLineStyle.showMajorGridLines = NO;
    chart.yAxis = sleepAxis;
    
    //setup temperature y-axis on right of chart
    SChartNumberRange *moveRange = [[SChartNumberRange alloc] initWithMinimum:[NSNumber numberWithInt:0] andMaximum:[NSNumber numberWithInt:3000]];
    SChartNumberAxis *moveAxis = [[SChartNumberAxis alloc] initWithRange:moveRange];
    moveAxis.title = [NSString stringWithFormat:@"Activity Time (%@C)",@"hour"];
    moveAxis.axisPosition = SChartAxisPositionReverse;
    moveAxis.style.majorGridLineStyle.showMajorGridLines = YES;
    [chart addYAxis: moveAxis];
    
    if (iPad) {
        chart.legend.hidden = NO;
        chart.legend.position = SChartLegendPositionBottomMiddle;
        chart.legend.placement = SChartLegendPlacementOutsidePlotArea;
    }
    else{
        chart.legend.hidden = NO;
        chart.legend.position = SChartLegendPositionBottomMiddle;
        chart.legend.placement = SChartLegendPlacementOutsidePlotArea;
    }
    
    return chart;
}

- (NSString*)titleForKey:(NSString*)key {
    NSString *title = nil;
    
    if ([key isEqualToString:sleep]) {
        title = @"Sleep";
    } else if ([key isEqualToString:minmove] || [key isEqualToString:maxmove]) {
        title = @"Steps";
    } else if ([key isEqualToString:move]) {
        title = @"Activity";
    } else if ([key isEqualToString:eat]) {
        title = @"Eat";
    }
    return title;
}

- (SChartSeries*)allDataSeriesForKey:(NSString*)key {
    
    SChartSeries *series = nil;
    
    if ([key isEqualToString:sleep]) {
        SChartLineSeries *lineSeries = [SChartLineSeries new];
        lineSeries.style = [self.theme lineSeriesStyleForSeriesAtIndex:1 selected:NO];
        lineSeries.style.showFill = YES;
        lineSeries.baseline = @0;
        lineSeries.title = [self titleForKey:key];
        lineSeries.entryAnimation = [SChartAnimation growVerticalAnimation];
        lineSeries.animationEnabled = YES;
        series = lineSeries;
        
    } else if ([key isEqualToString:minmove] || [key isEqualToString:maxmove]) {
        SChartColumnSeries *colSeries = [SChartColumnSeries new];
        colSeries.title = [self titleForKey:key];
        
        if ([key isEqualToString:minmove]) {
            colSeries.style.areaColor = [UIColor clearColor];
            colSeries.style.areaColorGradient = [UIColor clearColor];
            colSeries.style.lineColor = [UIColor clearColor];
            colSeries.showInLegend = NO;
            
        } else {
            colSeries.style = [self.theme columnSeriesStyleForSeriesAtIndex:5 selected:NO];
        }
        
        colSeries.stackIndex = [NSNumber numberWithInt:1];
        series = colSeries;
        
    } else if ([key isEqualToString:move]) {
        SChartLineSeries *lineSeries = [SChartLineSeries new];
        lineSeries.title = [self titleForKey:key];
        lineSeries.style = [self.theme lineSeriesStyleForSeriesAtIndex:2 selected:NO];
        series = lineSeries;
        
    } else if ([key isEqualToString:eat]) {
        SChartScatterSeries *scatterSeries = [SChartScatterSeries new];
        scatterSeries.title = [self titleForKey:key];
        scatterSeries.style = [self.theme scatterSeriesStyleForSeriesAtIndex:4 selected:NO];
        scatterSeries.style.pointStyle.innerColor = [UIColor clearColor];
        scatterSeries.animationEnabled = YES;
        series = scatterSeries;
    }
    
    return series;
}

@end
