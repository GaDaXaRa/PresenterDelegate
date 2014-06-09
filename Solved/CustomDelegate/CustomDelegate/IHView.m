//
//  IHView.m
//  CustomDelegate
//
//  Created by Francisco Sevillano on 09/06/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHView.h"

@implementation IHView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(0, 0, 200, 200);
        [button addTarget:self
                   action:@selector(ourButtonPressed)
         forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"Press me" forState:UIControlStateNormal];
        [self addSubview:button];
    }
    return self;
}

- (void)ourButtonPressed
{
    if ([self.delegate respondsToSelector:@selector(buttonPressed)])
    {
        [self.delegate buttonPressed];
    }
}

@end
