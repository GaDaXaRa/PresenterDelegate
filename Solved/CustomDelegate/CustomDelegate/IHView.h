//
//  IHView.h
//  CustomDelegate
//
//  Created by Francisco Sevillano on 09/06/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IHViewDelegate <NSObject>

- (void)buttonPressed;

@end

@interface IHView : UIView

@property (nonatomic, weak) id<IHViewDelegate> delegate;

@end
