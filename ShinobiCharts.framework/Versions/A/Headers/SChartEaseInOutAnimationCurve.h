//
//  SChartEaseInOutAnimationCurve.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 29/11/2012.
//
//

#import "SChartAnimation.h"

/** This curve starts off slowly at 0.0, creating a slow initial phase.
 It accelerates past 0.5, then decelerates to reach 1.0, creating a slow exit phase.
 
 See the `SChartAnimationCurve.h` protocol.
 */

@interface SChartEaseInOutAnimationCurve : NSObject <SChartAnimationCurve>

@end
