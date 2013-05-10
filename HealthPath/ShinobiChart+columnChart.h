//
//  ShinobiChart+columnChart.h
//  ColumnChart

#import <ShinobiCharts/ShinobiChart.h>

@interface ShinobiChart (columnChart)

+ (ShinobiChart*)columnChartForAllDataWithFrame:(CGRect)frame;

- (SChartSeries*)allDataSeriesForKey:(NSString*)key;

@end
