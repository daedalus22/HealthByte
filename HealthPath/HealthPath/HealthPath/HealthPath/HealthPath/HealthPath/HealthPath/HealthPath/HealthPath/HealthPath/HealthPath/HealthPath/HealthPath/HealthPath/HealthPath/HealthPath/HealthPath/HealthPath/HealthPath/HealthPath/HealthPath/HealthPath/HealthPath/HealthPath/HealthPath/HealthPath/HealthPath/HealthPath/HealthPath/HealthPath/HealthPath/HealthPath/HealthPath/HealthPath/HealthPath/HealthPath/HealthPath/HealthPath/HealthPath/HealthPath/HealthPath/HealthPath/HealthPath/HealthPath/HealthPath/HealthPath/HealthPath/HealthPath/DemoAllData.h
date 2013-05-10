//
//  DemoAllData.h
//  HealthPathBCBS
//
//  Created by Chong Wang on 5/9/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AllData.h"

//data for demon
@interface DemoAllData : NSObject <AllData>

@property (nonatomic,readonly) NSMutableDictionary *data;
@property (nonatomic,readonly) NSArray *dataKeys;
@property (nonatomic,readonly) NSArray *times;

@end

