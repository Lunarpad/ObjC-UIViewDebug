//
//  UIView+Debug.h
//  Lunarpad
//
//  Created by Paul Shapiro.
//  Copyright (c) 2014 Lunarpad Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Debug)

- (void)giveBorderOfColor:(UIColor *)colour andWidth:(CGFloat)borderWidth;
- (void)giveBorder; // calls the above with random color
- (void)borderSubviews; // random borders all subviews through UIView+MessagePropagation

- (void)debugView; // Random color border and background, log view
- (void)debugSubviews;

@end
