//
//  MDSleepData.m
//  HealthByteBCBS
//
//  Created by Xiaoshan Huang on 5/10/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "MDSleepData.h"
#import "CHCSVParser.h"

@interface MDSleepData()
@property (strong, nonatomic) NSMutableArray *lines;
@property (strong, nonatomic) NSMutableArray *currentLine;
@end
@implementation MDSleepData

- (id)init
{
    self = [super init];
    NSString *file = @(__FILE__);
    file = [[file stringByDeletingLastPathComponent] stringByAppendingPathComponent:@"sleepdata.csv"];
    NSLog(@"Begin reading sleepdata");
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

