//
//  MDMoveData.m
//  HealthPathBCBS
//
//  Created by Xiaoshan Huang on 5/10/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "MDMoveData.h"
#import "CHCSVParser.h"

@interface MDMoveData()

@property (strong, nonatomic) NSMutableArray *lines;
@property (strong, nonatomic) NSMutableArray *currentLine;

@end


@implementation MDMoveData

- (id)init
{
    self = [super init];
    NSString *file = @(__FILE__);
    file = [[file stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"movedata.csv"];
    NSLog(@"Begin reading movedata");
	NSStringEncoding encoding = 0;
    NSInputStream *stream = [NSInputStream inputStreamWithFileAtPath:file];
	CHCSVParser * p = [[CHCSVParser alloc] initWithInputStream:stream usedEncoding:&encoding delimiter:','];
    [p setRecognizesBackslashesAsEscapes:YES];
    [p setSanitizesFields:YES];
	
	NSLog(@"encoding: %@", CFStringGetNameOfEncoding(CFStringConvertNSStringEncodingToEncoding(encoding)));
    [p setDelegate:self];
	NSTimeInterval start = [NSDate timeIntervalSinceReferenceDate];
	[p parse];
	NSTimeInterval end = [NSDate timeIntervalSinceReferenceDate];
	NSLog(@"raw difference: %f", (end-start));
    
    _dataKeys = [NSMutableArray arrayWithArray:[[_lines objectAtIndex:0] objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(1, [[_lines objectAtIndex:0] count]-1)]]];
    _times = [NSMutableArray new];
    _data = [NSMutableDictionary new];
    for (int dp = 1; dp<_lines.count; dp++) {
        [_times addObject:[[_lines objectAtIndex:dp] objectAtIndex:0]];
        NSMutableArray *datas = [NSMutableArray new];
        for (int dt = 1; dt<[[_lines objectAtIndex:dp] count]; dt++) {
            [datas addObject:[NSNumber numberWithFloat:[[[_lines objectAtIndex:dp] objectAtIndex:dt] floatValue]]];
        }
        [_data setObject:[NSDictionary dictionaryWithObjects:datas forKeys:_dataKeys] forKey:[_times objectAtIndex:dp-1]];
    }


//
//    _data = [NSMutableDictionary new];
//    _times = [NSArray arrayWithObjects:
//              @"7",
//              @"8",
//              @"9",
//              @"10",
//              @"11",
//              @"12",
//              @"13",
//              @"14",
//              @"15",
//              @"16",
//              @"17",
//              @"18",
//              @"19",
//              @"20",
//              @"21",
//              @"22",
//              @"23",
//              nil];
//    _dataKeys = [NSArray arrayWithObjects:@"move",@"stationary", nil];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:5.8f], [NSNumber numberWithFloat:5.8f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:0]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:15.8f], [NSNumber numberWithFloat:10.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:1]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:20.8f], [NSNumber numberWithFloat:5.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:2]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:25.8f], [NSNumber numberWithFloat:5.8f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:3]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:25.8f], [NSNumber numberWithFloat:0.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:4]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:25.8f], [NSNumber numberWithFloat:0.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:5]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:30.8f], [NSNumber numberWithFloat:5.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:6]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:40.8f], [NSNumber numberWithFloat:10.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:7]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:42.8f], [NSNumber numberWithFloat:2.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:8]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:42.8f], [NSNumber numberWithFloat:0.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:9]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:45.8f], [NSNumber numberWithFloat:3.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:10]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:68.8f], [NSNumber numberWithFloat:23.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:11]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:70.8f], [NSNumber numberWithFloat:2.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:12]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:72.8f], [NSNumber numberWithFloat:2.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:13]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:78.8f], [NSNumber numberWithFloat:6.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:14]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:80.8f],[NSNumber numberWithFloat:2.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:15]];
//    [_data setObject:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:85.8f],[NSNumber numberWithFloat:5.0f], nil] forKeys:_dataKeys] forKey:[_times objectAtIndex:16]];


    return self;
}


- (void)parserDidBeginDocument:(CHCSVParser *)parser {
    _lines = [[NSMutableArray alloc] init];
}
- (void)parser:(CHCSVParser *)parser didBeginLine:(NSUInteger)recordNumber {
    _currentLine = [[NSMutableArray alloc] init];
}
- (void)parser:(CHCSVParser *)parser didReadField:(NSString *)field atIndex:(NSInteger)fieldIndex {
    NSLog(@"%@", field);
    [_currentLine addObject:field];
}
- (void)parser:(CHCSVParser *)parser didEndLine:(NSUInteger)recordNumber {
    [_lines addObject:_currentLine];
    _currentLine = nil;
}
- (void)parserDidEndDocument:(CHCSVParser *)parser {
    //	NSLog(@"parser ended: %@", csvFile);
}
- (void)parser:(CHCSVParser *)parser didFailWithError:(NSError *)error {
	NSLog(@"ERROR: %@", error);
    _lines = nil;
}

@end
