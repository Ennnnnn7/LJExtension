//
//  UIView+LJFrame.m
//  InvoiceBrowser
//
//  Created by 刘杰 on 2017/2/17.
//  Copyright © 2017年 LJ. All rights reserved.
//

#import "UIView+LJFrame.h"

@implementation UIView (LJFrame)

- (void)setLeft:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setTop:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setCenter_X:(CGFloat)center_X {
    CGPoint center = self.center;
    center.x = center_X;
    self.center = center;
}

- (CGFloat)center_X {
    return self.center.x;
}

- (void)setCenter_Y:(CGFloat)center_Y {
    CGPoint center = self.center;
    center.y = center_Y;
    self.center = center;
}

- (CGFloat)center_Y {
    return self.center.y;
}
@end
