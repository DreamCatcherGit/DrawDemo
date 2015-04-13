//
//  QYImageView.m
//  DrawDemo
//
//  Created by qingyun on 15-3-31.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYImageView.h"

@implementation QYImageView

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
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    
    [image drawInRect:rect];
    
}


@end
