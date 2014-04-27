//
//  UIView+MessagePropagation.m
//  Lunarpad
//
//  Created by Paul Shapiro.
//  Copyright (c) 2014 Lunarpad Corp. All rights reserved.
//

#import "UIView+MessagePropagation.h"


////////////////////////////////////////////////////////////////////////////////

@implementation UIView (MessagePropagation)

- (void)propagateSelectorToSubviews:(SEL)selector withObject:(id)object
{
    for (UIView *subview in self.subviews) {
        if ([subview respondsToSelector:selector]) {
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [subview performSelector:selector withObject:object];
#pragma clang diagnostic pop
        }        
        [subview propagateSelectorToSubviews:selector withObject:object];
    }
}

@end
