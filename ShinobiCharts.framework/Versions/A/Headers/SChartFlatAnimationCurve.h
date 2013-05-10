//
//  SChartFlatAnimationCurve.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 29/11/2012.
//
//

#import "SChartAnimation.h"

/** This flat curve evaluator returns 1.f ('finished') for all values of t.
 
 See the `SChartAnimationCurve.h` protocol.
 */
@interface SChartFlatAnimationCurve : NSObject <SChartAnimationCurve>

@end
