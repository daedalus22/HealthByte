//
//  SChartDelayBounceWithMinimumAnimationCurve.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 17/01/2013.
//
//

#import "SChartAnimation.h"


/** This curve evaluator describes a curve similar to that described by SChartBounceAnimation but at the start the curve is constant at '0.1', this is the 'delay' where there is no change. The 'bounce' occurs over a shorter proportion of the duration (50%) at the end.
 The important difference between this curve and a SChartDelayBounceAnimationCurve is that this curve doesn't return 0 during the delay - it returns 0.1 which means that a series will be visible.
 
 See the `SChartAnimationCurve.h` protocol.
 */

@interface SChartDelayBounceWithMinimumAnimationCurve : NSObject <SChartAnimationCurve>

@end
