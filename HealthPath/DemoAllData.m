//
//  DemoAllData.m
//  HealthPathBCBS
//
//  Created by Chong Wang on 5/9/13.
//  Copyright (c) 2013 Dean Chen/Enhao Gong. All rights reserved.
//

#import "DemoAllData.h"

@implementation DemoAllData

- (id)init {
    self = [super init];
    if (self) {
        
        _data = [NSMutableDictionary new];
        
        _dataKeys = [NSArray arrayWithObjects:
                     eat,
                     move,
                     sleep,
                     step,
                     nil];
        
        _times = [NSArray arrayWithObjects:
                                        @"12am",
                                        @"1am",
                                        @"2am",
                                        @"3am",
                                        @"4am",
                                        @"5am",
                                        @"6am",
                                        @"8am",
                                        @"9am",
                                        @"10am",
                                        @"11am",
                                        @"12pm",
                                        @"1pm",
                                        @"2pm",
                                        @"3pm",
                                        @"4pm",
                                        @"5pm",
                                        @"6pm",
                                        @"7pm",
                                        @"8pm",
                                        @"9pm",
                                        @"10pm",
                                        @"11pm",
                  nil];
        
        
        int i = 0;
        float data_eat,data_move,data_sleep,data_step;
        
        
        
        
        for (i=0; i<[_times count]; i++)
        {
            switch (i) {
                case 0:
                    data_eat=-10.0f;data_move=0.0f;data_sleep=60.0f;data_step=0;break;
                case 1:
                    data_eat=0.0f;data_move=0.0f;data_sleep=80.0f;data_step=0;break;
                case 2:
                    data_eat=0.0f;data_move=0.0f;data_sleep=100.0f;data_step=0;break;
                case 3:
                    data_eat=0.0f;data_move=0.0f;data_sleep=60.0f;data_step=0;break;
                case 4:
                    data_eat=0.0f;data_move=0.0f;data_sleep=100.0f;data_step=0;break;
                case 5:
                    data_eat=0.0f;data_move=0.0f;data_sleep=100.0f;data_step=0;break;
                case 6:
                    data_eat=0.0f;data_move=0.0f;data_sleep=20.0f;data_step=0;break;
                case 7:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=20;break;
                case 8:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=30;break;
                case 9:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=10;break;
                case 10:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=0;break;
                case 11:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=0;break;
                case 12:
                    data_eat=20.0f;data_move=0.0f;data_sleep=0.0f;data_step=20;break;
                case 13:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=0;break;
                case 14:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=0;break;
                case 15:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=0;break;
                case 16:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=20;break;
                case 17:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=30;break;
                case 18:
                    data_eat=15.0f;data_move=0.0f;data_sleep=0.0f;data_step=30;break;
                case 19:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=50;break;
                case 20:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=0;break;
                case 21:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=20;break;
                case 22:
                    data_eat=10.0f;data_move=0.0f;data_sleep=0.0f;data_step=10;break;
                case 23:
                    data_eat=0.0f;data_move=0.0f;data_sleep=0.0f;data_step=10;break;
                default:
                    break;
            }
            NSArray *tempData = [NSArray arrayWithObjects:[NSNumber numberWithFloat:data_eat],
                                 [NSNumber numberWithFloat:data_move],
                                 [NSNumber numberWithFloat:data_sleep],
                                 [NSNumber numberWithFloat:data_step],
                                 nil];
            [_data setObject:[NSDictionary dictionaryWithObjects:tempData forKeys:_dataKeys]  forKey:[_times objectAtIndex:i]];
        }
        
    }
    return self;
}

@end

