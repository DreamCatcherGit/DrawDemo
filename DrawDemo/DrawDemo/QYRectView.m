//
//  QYRectView.m
//  DrawDemo
//
//  Created by qingyun on 15-3-30.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYRectView.h"

@implementation QYRectView

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
    
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextSetFillColorWithColor(ctx, [UIColor greenColor].CGColor);
    
    CGContextSetLineWidth(ctx, 3);
    
    CGContextAddRect(ctx, rect);
    
//    CGContextStrokePath(ctx);
    CGContextDrawPath(ctx, kCGPathFillStroke);
}


@end
