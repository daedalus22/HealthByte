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
    
    float workR, homeR, leisureR, workH, homeH, leisureH;

    workH = 15;
    homeH = 7;
    leisureH = 2;
    hGraphEatScore = 60;
    hGraphMoveScore = 50;
    hGraphSleepScore = 40;
    
    homeR = -M_PI/2+M_PI*homeH/12/2;
    leisureR = homeR + M_PI*homeH/12/2 + M_PI*leisureH/12/2;
    workR = leisureR + M_PI*leisureH/12/2 + M_PI*workH/12/2;
    
    CGContextAddArc(context,
                    centerx,
                    centery,
                    radius,
                    homeR-M_PI*homeH/12/2,
                    homeR+M_PI*homeH/12/2,
                    clockwise ? 0 : 1);
    
    CGContextStrokePath(context);
    CGContextSetStrokeColorWithColor(context, [UIColor purpleColor].CGColor);
    
    
    CGContextAddArc(context,
                    centerx,
                    centery,
                    radius,
                    leisureR-M_PI*leisureH/12/2,
                    leisureR+M_PI*leisureH/12/2,
                    clockwise ? 0 : 1);
    
    CGContextStrokePath(context);

    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextAddArc(context,
                    centerx,
                    centery,
                    radius,
                    workR-M_PI*workH/12/2,
                    workR+M_PI*workH/12/2,
                    clockwise ? 0 : 1);
    
    CGContextStrokePath(context);
    CGContextRestoreGState(context);
    
    CGContextSaveGState(context);
    
    CGContextSetTextMatrix(context, CGAffineTransformMake(1.0, 0.0, 0.0, -1.0, 0.0, 0.0));
    
    CGContextSelectFont(context, "Helvetica", 16, kCGEncodingMacRoman);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+ cosf(homeR)*radius-20, centery+ sinf(homeR)*radius+5);
    CGContextShowText(context, [@"Home" UTF8String], strlen([@"Home" UTF8String]));
    
    CGContextSelectFont(context, "Helvetica", 16, kCGEncodingMacRoman);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+ cosf(workR)*radius-20, centery+ sinf(workR)*radius+5);
    CGContextShowText(context, [@"Work" UTF8String], strlen([@"Work" UTF8String]));
    
    CGContextSelectFont(context, "Helvetica", 16, kCGEncodingMacRoman);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+ cosf(leisureR)*radius-25, centery+ sinf(leisureR)*radius+3);
    CGContextShowText(context, [@"Leisure" UTF8String], strlen([@"Leisure" UTF8String]));
    
    CGContextRestoreGState(context);

#endif
    
    // draw a dot
    linewidth = 15;
    
    float cosR, sinR;

    CGContextSaveGState(context);

    CGAffineTransform xform = CGAffineTransformMake(1.0, 0.0, 0.0, -1.0, 0.0, 0.0);
    CGContextSetTextMatrix(context, xform);
    // EAT
    cosR = cosf(M_PI/6)*radius*hGraphEatScore/100.0;
    sinR = sinf(M_PI/6)*radius*hGraphEatScore/100.0;

    CGContextMoveToPoint(context, centerx+cosR, centery+sinR);
    // CGContextMoveToPoint(context, centerx, centery);

    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, linewidth);

    
    CGContextAddLineToPoint(context, centerx+cosR + 1, centery+sinR);
    CGContextStrokePath(context);
    
    CGContextSelectFont(context, "Helvetica", 12, kCGEncodingMacRoman);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+cosR - 15, centery+sinR-8);
    CGContextShowText(context, [@"EAT" UTF8String], strlen([@"EAT" UTF8String]));
    
    // SLEEP
    cosR = cosf(-3*M_PI/6)*radius*hGraphSleepScore/100.0;
    sinR = sinf(-3*M_PI/6)*radius*hGraphSleepScore/100.0;
    
    CGContextMoveToPoint(context, centerx+cosR, centery+sinR);
    // CGContextMoveToPoint(context, centerx, centery);
    
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, linewidth);
    
    
    CGContextAddLineToPoint(context, centerx+cosR + 1, centery+sinR);
    CGContextStrokePath(context);
    
    CGContextSelectFont(context, "Helvetica", 12, kCGEncodingMacRoman);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+cosR - 15, centery+sinR - 8);
    CGContextShowText(context, [@"SLEEP" UTF8String], strlen([@"SLEEP" UTF8String]));
    
    // MOVE
    cosR = cosf(5*M_PI/6)*radius*hGraphMoveScore/100.0;
    sinR = sinf(5*M_PI/6)*radius*hGraphMoveScore/100.0;
    
    CGContextMoveToPoint(context, centerx+cosR, centery+sinR);
    // CGContextMoveToPoint(context, centerx, centery);
    
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineWidth(context, linewidth);
    
    
    CGContextAddLineToPoint(context, centerx+cosR + 1, centery+sinR);
    CGContextStrokePath(context);
    
    CGContextSelectFont(context, "Helvetica", 12, kCGEncodingMacRoman);
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextSetTextPosition(context, centerx+cosR - 15, centery+sinR-8);
    CGContextShowText(context, [@"MOVE" UTF8String], strlen([@"MOVE" UTF8String]));
    
    CGContextRestoreGState(context);
    
}


@end
