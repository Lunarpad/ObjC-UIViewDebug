//
//  UIView+MessagePropagation.h
//  Lunarpad
//
//  Created by Paul Shapiro.
//  Copyright (c) 2014 Lunarpad Corp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MessagePropagation)

- (void)propagateSelectorToSubviews:(SEL)selector withObject:(id)object;

@end
