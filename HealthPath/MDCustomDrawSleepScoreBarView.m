//
//  MDCustomDrawSleepScoreBarView.m
//  HealthPathBCBS_enhao
//
//  Created by Dean Chen on 5/10/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "MDCustomDrawSleepScoreBarView.h"
#define BARHEIGHT 230
#define BARWIDTH  70
#define GUIDEWIDTH 3

@implementation MDCustomDrawSleepScoreBarView
@synthesize barViewSleepScore = _barViewSleepScore;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

static void drawEatBar(CGContextRef context, float x, float y, float h, CGColorRef color) {
    CGPoint startPoint = CGPointMake(x, y);
    CGPoint endPoint = CGPointMake(x, y - h);
    
    
    CGContextSaveGState(context);
    CGContextSetLineCap(context, kCGLineCapSquare);
    
    // white bar bg
    CGContextSetLineWidth(context, BARWIDTH);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextMoveToPoint(context, startPoint.x, startPoint.y);
    CGContextAddLineToPoint(context, endPoint.x, y-BARHEIGHT);
    CGContextStrokePath(context);
    
    // guide lines
    CGContextSetLineWidth(context, GUIDEWIDTH);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextMoveToPoint(context, startPoint.x - BARWIDTH/2 + GUIDEWIDTH/2, startPoint.y-BARHEIGHT - BARWIDTH/2);
    CGContextAddLineToPoint(context, startPoint.x + BARWIDTH/2 - GUIDEWIDTH/2, y-BARHEIGHT- BARWIDTH/2);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, startPoint.x - BARWIDTH/2 + GUIDEWIDTH/2, startPoint.y + BARWIDTH/2);
    CGContextAddLineToPoint(context, startPoint.x + BARWIDTH/2 - GUIDEWIDTH/2, y + BARWIDTH/2);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, startPoint.x - BARWIDTH/2 + GUIDEWIDTH/2, (startPoint.y)-((BARHEIGHT)/2));
    CGContextAddLineToPoint(context, startPoint.x + BARWIDTH/2 - GUIDEWIDTH/2, y-((BARHEIGHT)/2));
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, startPoint.x - BARWIDTH/2 + GUIDEWIDTH/2, (startPoint.y)-(BARHEIGHT/4)+(BARWIDTH/4));
    CGContextAddLineToPoint(context, startPoint.x + BARWIDTH/2 - GUIDEWIDTH/2, y-(BARHEIGHT/4)+(BARWIDTH/4));
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, startPoint.x - BARWIDTH/2 + GUIDEWIDTH/2, (startPoint.y)-(BARHEIGHT/4*3)-(BARWIDTH/4));
    CGContextAddLineToPoint(context, startPoint.x + BARWIDTH/2 - GUIDEWIDTH/2, y-(BARHEIGHT/4*3)-(BARWIDTH/4));
    CGContextStrokePath(context);
    
    if (h <= 0) {
        CGContextRestoreGState(context);
        return;
    }
    // bar itself
    CGContextSetLineWidth(context, BARWIDTH);
    CGContextSetStrokeColorWithColor(context, color);
    CGContextMoveToPoint(context, startPoint.x, startPoint.y);
    CGContextAddLineToPoint(context, endPoint.x, endPoint.y);
    CGContextStrokePath(context);
    CGContextRestoreGState(context);
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGContextRef context = UIGraphicsGetCurrentContext();
    int barx = 160, bary = 350;
    int height = self.barViewSleepScore/100.0*BARHEIGHT;
    
    // some tweaking adjust for line width
    if (height < 70) {
        height = height - 30;
    } else {
        if (height < 150) {
            height = height - 40;
        }
    }
    
    
    
    drawEatBar(context, barx, bary, height, [UIColor blueColor].CGColor);
}


@end
