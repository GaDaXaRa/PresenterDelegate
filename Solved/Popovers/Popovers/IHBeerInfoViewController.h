//
//  IHBeerInfoViewController.h
//  Popovers
//
//  Created by Francisco Sevillano on 22/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol IHBeerInfoViewControllerDelegate <NSObject>

- (void)startedEditing;
- (void)finishedEditing;

@end

@interface IHBeerInfoViewController : UIViewController

@property (nonatomic, weak) id<IHBeerInfoViewControllerDelegate> delegate;

@end
