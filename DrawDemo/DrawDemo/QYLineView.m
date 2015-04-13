//
//  QYLineView.m
//  DrawDemo
//
//  Created by qingyun on 15-3-30.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYLineView.h"

@implementation QYLineView

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
    // 1. 获取绘图上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 2. 设置绘图状态
    // 设置线宽
    CGContextSetLineWidth(ctx, 1);
    
    // 设置颜色
    // 创建颜色空间
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    const CGFloat components[] = {1,0,0,1};
    // 创建颜色
    CGColorRef color = CGColorCreate(colorSpace, components);
    // 设置描边的颜色
    CGContextSetStrokeColorWithColor(ctx, color);
    
    // 设置点划线
    const CGFloat lengths[] = {2,6,4,1};
    CGContextSetLineDash(ctx, 0, lengths, 4);
    
    // 3. 构建Path
    NSLog(@"%@", NSStringFromCGPoint(rect.origin));
    // 移动画笔到指定点
    // 开始path
    CGContextBeginPath(ctx);
    CGContextMoveToPoint(ctx, rect.origin.x, rect.origin.y);
    
    // 添加一条直线
    CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
    
    // 关闭path
    CGContextClosePath(ctx);
    
    // 4. 绘制 stroke fill
//    CGContextFillPath(<#CGContextRef c#>)
//    CGContextStrokePath(<#CGContextRef c#>)
    CGContextDrawPath(ctx, kCGPathStroke);
    
    // 5. 回收资源
    CGColorRelease(color);
    CGColorSpaceRelease(colorSpace);
}



@end
