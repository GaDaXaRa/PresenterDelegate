//
//  IHPresentedViewController.h
//  Presenting
//
//  Created by Francisco Sevillano on 15/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import <UIKit/UIKit.h>

//Exercise Hide the view controller but letting the presenter do it. The presented view controller will have to let it know using a delegate.
@protocol BackToPresenterDelegate <NSObject>

- (void)backWithUserInfo:(NSString *)userInfo;

@end

@interface IHPresentedViewController : UIViewController

@property (weak) id<BackToPresenterDelegate> delegate;

@end
