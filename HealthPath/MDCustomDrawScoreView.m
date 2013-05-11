//
//  MDCustomDrawScoreView.m
//  HealthPathBCBS
//
//  Created by Dean Chen on 5/8/13.
//  Copyright (c) 2013 Dean Chen. All rights reserved.
//

#import "MDCustomDrawScoreView.h"

@implementation MDCustomDrawScoreView
@synthesize hGraphEatScore;
@synthesize hGraphMoveScore;
@synthesize hGraphSleepScore;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    int centerx = 160, centery = 120, radius = 100, linewidth = 40;

    // Drawing code
#if 1
    CGContextSaveGState(context);
    CGContextSetLineCap(context, kCGLineCapButt);
    
    //CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:(30.0/255) green:(130.0/255) blue:0.0 alpha:1.0].CGColor);
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:131/255.0 green:196/255.0 blue:87/255.0 alpha:1.0].CGColor);
    
    CGContextSetLineWidth(context, linewidth);
    
    // dashed line
    // CGFloat dashArray[] = {16,8};
    // CGContextSetLineDash(context, 0, dashArray, 2);
    
    // draws circle centered at (160, 120) radius 80. from top (-pi/2) to pi, clockwise
    bool clockwise = YES;
    CGContextAddArc(context,
                    centerx,
                    centery,
                    radius,
                    -M_PI_2,
                    M_PI/6,
                    clockwise ? 0 : 1);
    
    CGContextStrokePath(context);
    CGContextSetStrokeColorWithColor(context, [UIColor purpleColor].CGColor);
    CGContextAddArc(context,
                    centerx,
                    centery,
                    radius,
                    M_PI/6,
                    M_PI_2+(M_PI/6*2),
                    clockwise ? 0 : 1);
    
    CGContextStrokePath(context);

    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextAddArc(context,
                    centerx,
                    centery,
                    radius,
                    M_PI_2+(M_PI/6*2),
                    -M_PI_2,
                    clockwise ? 0 : 1);
    
    CGContextStrokePath(context);
    CGContextRestoreGState(context);
#endif
    
    // draw a dot
    linewidth = 15;
    
    float cosR, sinR;

    CGContextSaveGState(context);

    CGAffineTransform xform = CGAffineTransformMake(1.0, 0.0, 0.0, -1.0, 0.0, 0.0);
    CGContextSetTextMatrix(context, xform);
    // EAT
    cosR = cosf(-M_PI/6)*radius*hGraphEatScore/100.0;
    sinR = sinf(-M_PI/6)*radius*hGraphEatScore/100.0;

    CGContextMoveToPoint(context, centerx+cosR, centery+sinR);
    // CGContextMoveToPoint(context, centerx, centery);

    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, linewidth);

    
    CGContextAddLineToPoint(context, centerx+cosR + 1, centery+sinR);
    CGContextStrokePath(context);
    
    CGContextSelectFont(context, "Helvetica", 12, kCGEncodingMacRoman);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+cosR + 15, centery+sinR-7);
    CGContextShowText(context, [@"EAT" UTF8String], strlen([@"EAT" UTF8String]));
    
    // SLEEP
    cosR = cosf(-5*M_PI/6)*radius*hGraphSleepScore/100.0;
    sinR = sinf(-5*M_PI/6)*radius*hGraphSleepScore/100.0;
    
    CGContextMoveToPoint(context, centerx+cosR, centery+sinR);
    // CGContextMoveToPoint(context, centerx, centery);
    
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, linewidth);
    
    
    CGContextAddLineToPoint(context, centerx+cosR + 1, centery+sinR);
    CGContextStrokePath(context);
    
    CGContextSelectFont(context, "Helvetica", 12, kCGEncodingMacRoman);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+cosR + 15, centery+sinR - 7);
    CGContextShowText(context, [@"SLEEP" UTF8String], strlen([@"SLEEP" UTF8String]));
    
    // MOVE
    cosR = cosf(M_PI_2)*radius*hGraphMoveScore/100.0;
    sinR = sinf(M_PI_2)*radius*hGraphMoveScore/100.0;
    
    CGContextMoveToPoint(context, centerx+cosR, centery+sinR);
    // CGContextMoveToPoint(context, centerx, centery);
    
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, linewidth);
    
    
    CGContextAddLineToPoint(context, centerx+cosR + 1, centery+sinR);
    CGContextStrokePath(context);
    
    CGContextSelectFont(context, "Helvetica", 12, kCGEncodingMacRoman);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+cosR + 15, centery+sinR-7);
    CGContextShowText(context, [@"MOVE" UTF8String], strlen([@"MOVE" UTF8String]));
    
    CGContextRestoreGState(context);
    
}


@end
