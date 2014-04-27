//
//  UIView+Debug.m
//  Lunarpad
//
//  Created by Paul Shapiro.
//  Copyright (c) 2014 Lunarpad Corp. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIView+Debug.h"
#import "UIColor+Random.h"
#import "UIView+MessagePropagation.h"

@implementation UIView (Debug)

- (void)giveBorder
{    
    [self giveBorderOfColor:[UIColor randomColor] andWidth:1];
}

- (void)giveBorderOfColor:(UIColor *)colour andWidth:(CGFloat)borderWidth
{
    self.layer.borderColor = colour.CGColor;
    self.layer.borderWidth = borderWidth;
}

- (void)borderSubviews
{
    [self propagateSelectorToSubviews:@selector(giveBorder) withObject:nil];
}

- (void)debugView
{
    [self giveBorder];
    self.backgroundColor = [UIColor randomColor];
    NSLog(@"Debug: View: %@", self);
}

- (void)debugSubviews
{
    [self propagateSelectorToSubviews:@selector(debugView) withObject:nil];
}

@end
