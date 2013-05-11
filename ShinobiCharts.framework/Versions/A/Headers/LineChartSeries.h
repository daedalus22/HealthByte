//
//  LineChartSeries.h
//  SChart
//
//  Copyright 2011 Scott Logic Ltd. All rights reserved.
//

@interface SChartGLView (LineChartSeries)

- (void)horizontalFill:(float*)series
             forSeries:(SChartSeries *)s
              withSize:(GLuint)size
             withColor:(UIColor*)fillColour
withColorBelowBaseline:(UIColor*)fillColourBelowBaseline
 withGradientFillColor:(UIColor*)gradientFillColour
 withGradientFillColorBelowBaseline:(UIColor*)gradientFillColourBelowBaseline
          withBaseline:(float)baseline
withMaxOffsetAboveBaseline:(float)maxOffsetAboveBaseline
withMaxOffsetBelowBaseline:(float)maxOffsetBelowBaseline
     withFillDirection:(int)fillDirection
      withGradientFill:(BOOL)gradientFill
        andTranslation:(const SChartGLTranslation *)transform;

- (void)drawLineStrip:(float*)series
             forSeries:(SChartSeries *)s
             withSize:(GLuint)size
            withColor:(UIColor*)lineColour
withColorBelowBaseline:(UIColor*)lineColourBelowBaseline
            withWidth:(float)width
         withBaseline:(float)baseline
    withFillDirection:(int)fillDirection
       andTranslation:(const SChartGLTranslation *)transform;


- (void)drawDataPoints:(float *)series
             forSeries:(SChartSeries *)s
     withPointTextures:(int *)textures
              withSize:(GLuint)size
             withColor:(UIColor *)pointColour
withColorBelowBaseline:(UIColor*)pointColourBelowBaseline
            withRadius:(float)radius
       withRadiusArray:(float*)radii
              withFade:(float)fade
          withBaseline:(float)baseline
     withFillDirection:(int)fillDirection
        andTranslation:(const SChartGLTranslation *)translation
isLastInTransformBatch:(BOOL)endTransformBatch;


@end
