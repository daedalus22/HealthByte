//
//  SChartRange.h
//  SChart
//
//  Copyright 2011 Scott Logic Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
/** 
 SChartRange is the base class for several range types. A range for an axis should be specified as one of the sub classes such as SChartNumberRange. 
 
 Some range types, such as a number range, may be valid for several axis types.
 */
@interface SChartRange : NSObject

/** @name Initialisation */
/** Initialise with a minimum object  and maximum object*/
- (id)initWithMinimum:(NSNumber *)min andMaximum:(NSNumber *)max;

/** @name Setting the range */
/** The object representing the minimum _value_ for this range. */
@property (nonatomic, retain, readonly) NSNumber *minimum;

/** The object representing the maximum _value_ for this range. */
@property (nonatomic, retain, readonly) NSNumber *maximum;

/** @name Information about the range */
/** Returns an NSNumber representing the total _value_ difference between the minimum and maximum */
- (NSNumber *)span;


#pragma mark -
#pragma mark Static Initialisations
+ (SChartRange *)rangeWithRange:(SChartRange *)range;



@end
