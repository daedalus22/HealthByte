//
//  SChartAnimationCurve.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 29/11/2012.
//
//

#import <Foundation/Foundation.h>

/** The SChartAnimationCurve protocol allows any object to act as a curve evaluator for series' entry and exit animations.
 
 The protocol consists of just one method, that which evaluates the curve at a given time.
 Objects conforming to this protocol need also to conform to the NSCopying protocol.
 */


@protocol SChartAnimationCurve <NSObject, NSCopying>

@required
/** @name Curve Evaluation*/
/** Should return an appropriate value for the animation curve at the given time.

 'Time' will be provided as a float between 0.f and 1.f, where 0.f is the beginning of the animation and 1.f is the end of the animation. (time = elapsed time / duration)
 The value returned represents the progress of the series between its beginning and end positions, where 0.f is the start state and 1.f is, nominally, the end state.
 It is valid to return a value 'v' where either v < 0.f or v > 1.f and it not necessary to return 1.f at time 1.f.
 */
-(float)valueAtTime:(float)time;


// For visibility of the convenience method
-(id)copy;

@end
