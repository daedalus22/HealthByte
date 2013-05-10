//
//  SChartEaseInAnimationCurve.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 29/11/2012.
//
//

#import "SChartAnimation.h"

/** This curve starts off slowly at 0.0, creating a gentle initial phase, then accelerates past 0.5 to reach 1.0.
 
 See the `SChartAnimationCurve.h` protocol.
 */

@interface SChartEaseInAnimationCurve : NSObject <SChartAnimationCurve>

@end
