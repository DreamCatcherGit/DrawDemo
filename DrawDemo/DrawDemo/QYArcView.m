//
//  QYArcView.m
//  DrawDemo
//
//  Created by qingyun on 15-3-30.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYArcView.h"

@implementation QYArcView

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
    // Drawing code
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor greenColor].CGColor);
    
    CGFloat x = rect.origin.x;
    CGFloat y = 100;
    
    CGContextMoveToPoint(ctx, x, y);
    
    CGContextAddArcToPoint(ctx, x, y+100, x+100, y+100, 100);
    CGContextAddArcToPoint(ctx, x+200, y+100, x+200, y, 100);
    CGContextAddArcToPoint(ctx, x+200, y-100, x+100, y-100, 100);
    CGContextAddArcToPoint(ctx, x, y-100, x, y, 100);
    
    CGContextStrokePath(ctx);
}


@end
