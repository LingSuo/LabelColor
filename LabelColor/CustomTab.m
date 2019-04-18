

//
//  CustomTab.m
//  LabelColor
//
//  Created by Arno on 2019/3/21.
//  Copyright © 2019 Arno. All rights reserved.
//

#import "CustomTab.h"

@implementation CustomTab

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if (!self.userInteractionEnabled || self.hidden || self.alpha <= 0.01) {
        return nil;
    }
    UIView *view = [super hitTest:point withEvent:event];
    if ([self pointInside:point withEvent:event]) {
        return view;
    } else {
        if (view == nil) {
            for (UIView *subView in self.subviews) {
                for (UIView *subViews in subView.subviews) {
                    if ([NSStringFromClass([subViews class]) isEqualToString:@"UITabBarSwappableImageView"]) {
                        CGPoint tp = [subViews convertPoint:point fromView:self];
                        if (CGRectContainsPoint(subView.bounds, tp)) {
                            view = subView;
                        }
                    }
                }
                
            }
        }
        return view;
    }
    return nil;
}


@end
