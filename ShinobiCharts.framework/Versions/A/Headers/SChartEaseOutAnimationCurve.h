//
//  SChartEaseOutAnimationCurve.h
//  ShinobiControls_Source
//
//  Created by Simon Withington on 29/11/2012.
//
//

#import "SChartAnimation.h"

/** This curve starts off steadily at 0.0, passes 0.5 then decelerates to reach 1.0, creating a slow exit phase.
 
 See the `SChartAnimationCurve.h` protocol.
 */

@interface SChartEaseOutAnimationCurve : NSObject <SChartAnimationCurve>

@end
