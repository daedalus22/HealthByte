//
//  MDSleepData.h
//  HealthByteBCBS
//
//  Created by Xiaoshan Huang on 5/10/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDEngineProtocol.h"
#import "CHCSVParser.h"

@interface MDSleepData : NSObject <SleepData, CHCSVParserDelegate >

@property (nonatomic,readonly) NSMutableDictionary *data;
@property (nonatomic,readonly) NSMutableArray *dataKeys;
@property (nonatomic,readonly) NSMutableArray *times;

@end
