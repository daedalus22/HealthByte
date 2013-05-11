//
//  SChartBounceDelayAnimationCurve.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 29/11/2012.
//
//

#import "SChartAnimation.h"

/** This curve evaluator describes a curve similar to that described by SChartBounceAnimation but where the 'bounce' occurs over a shorter proportion of the duration (50%)
For the remainder of the duration, the curve is constant at '1', this is the 'delay' where there is no change.
 
 See the `SChartAnimationCurve.h` protocol.
 */

@interface SChartBounceDelayAnimationCurve : NSObject <SChartAnimationCurve>

@end
