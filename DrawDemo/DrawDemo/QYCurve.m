//
//  QYCurve.m
//  DrawDemo
//
//  Created by 青云 on 15/3/30.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYCurve.h"

@implementation QYCurve

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
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor blackColor].CGColor);
    
    CGFloat x = 0;
    CGFloat y = 0;
    
    CGContextMoveToPoint(ctx, x, y);
    
    CGContextAddCurveToPoint(ctx, x+150, y+50, x+50, y+350, x+200, y+400);
   //CGContextAddArcToPoint(ctx, x+150, y+50, x+200, y, 100);
//    CGContextAddArcToPoint(ctx, x+200, y-100, x+100, y-100, 100);
//    CGContextAddArcToPoint(ctx, x, y-100, x, y, 100);
    
    CGContextStrokePath(ctx);
}


@end
