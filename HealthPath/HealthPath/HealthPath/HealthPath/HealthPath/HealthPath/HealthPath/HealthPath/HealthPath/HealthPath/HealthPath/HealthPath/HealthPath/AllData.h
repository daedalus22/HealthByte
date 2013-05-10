//
//  AllData.h
//  HealthPathBCBS
//
//  Created by Chong Wang on 5/9/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

#define eat @"Eat"
#define move @"Move"
#define sleep @"Sleep"
#define step @"Step"
#define minmove @"minmove"
#define maxmove @"maxmove"
//#define maxTemp @"max_temp"
//#define minTemp @"min_temp"
//#define meanTemp @"mean_temp"
//#define rainfall @"rainfall"
//#define sunshine @"sunshine"

//Define an inteface to provide our datasource with any kind of medal data
@protocol AllData <NSObject>

@required
- (NSArray*)times;
- (NSArray*)dataKeys;
- (NSMutableDictionary*)data;


@end
