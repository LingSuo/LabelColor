
//
//  ColorLabel.m
//  LabelColor
//
//  Created by Arno on 2018/7/3.
//  Copyright © 2018年 Arno. All rights reserved.
//

#import "ColorLabel.h"

@implementation ColorLabel


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    [[UIColor whiteColor] set];
    CGRect rect1 = CGRectZero;
    if (self.type == 0) {
//        固定宽度变色
        rect1 = CGRectMake(rect.origin.x + _pro * rect.size.width , rect.origin.y, rect.size.width * 1.0 / 8.0, rect.size.height);
    } else if (self.type == 1) {
        //x == 0
        rect1 = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width * _pro, rect.size.height);
    } else if (self.type == 2) {
        //x == 0 逆向
        rect1 = CGRectMake(rect.size.width - (rect.size.width * _pro), rect.origin.y, rect.size.width * _pro, rect.size.height);
        
    } else {
        //中心扩散
        rect1 = CGRectMake((rect.size.width - (rect.size.width * _pro)) / 2.0, rect.origin.y, rect.size.width * _pro, rect.size.height);
    }

//    CGRect rect2 = CGRectMake(rect.origin.x, rect.origin.y, rect.size.width * _pro, rect.size.height);
//    CGRect rect3 = CGRectMake(rect.size.width - (rect.size.width * _pro), rect.origin.y, rect.size.width * _pro, rect.size.height);
   
    UIRectFillUsingBlendMode(rect1, kCGBlendModeSourceIn);
//    UIRectFillUsingBlendMode(rect2, kCGBlendModeSourceIn);
//     UIRectFillUsingBlendMode(rect3, kCGBlendModeSourceIn);
}

- (void)setPro:(CGFloat)pro {
    _pro = pro;
    [self setNeedsDisplay];
}

@end
