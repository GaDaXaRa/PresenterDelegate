//
//  IHButton.m
//  XIBs
//
//  Created by Francisco Sevillano on 25/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHButton.h"

@implementation IHButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    self.backgroundColor = [UIColor blueColor];
}

@end
