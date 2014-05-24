//
//  IHViewController.m
//  Views
//
//  Created by Francisco Sevillano on 22/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

@property (nonatomic, strong)UIView *transformableView;

@end

@implementation IHViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Create a view using `initWithFrame:` and add it as a subview of the current view

    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    view.center =
        CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);
    
//    Create a second view and add it behind the first subview
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    secondView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:secondView];
    secondView.center =
        CGPointMake(self.view.frame.size.width / 2 + 50, self.view.frame.size.height / 2 + 50);
    [self.view sendSubviewToBack:secondView];
    
//    Then insert another one between the two.
    
    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    thirdView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:thirdView];
    thirdView.center =
    CGPointMake(self.view.frame.size.width / 2 + 25, self.view.frame.size.height / 2 + 25);
    [self.view insertSubview:thirdView aboveSubview:secondView];
    
//    Using the image in the assets, create for image views with different content modes to see how they differ.
    
    UIImageView *firstImageView =
        [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    firstImageView.image = [UIImage imageNamed:@"guinness"];
    firstImageView.contentMode = UIViewContentModeScaleToFill;
    
    UIImageView *secondImageView =
        [[UIImageView alloc] initWithFrame:CGRectMake(150, 0, 100, 100)];
    secondImageView.image = [UIImage imageNamed:@"guinness"];
    secondImageView.contentMode = UIViewContentModeScaleAspectFill;
    
    
    UIImageView *thirdImageView =
    [[UIImageView alloc] initWithFrame:CGRectMake(300, 0, 100, 100)];
    thirdImageView.image = [UIImage imageNamed:@"guinness"];
    thirdImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    UIImageView *fourthImageView =
    [[UIImageView alloc] initWithFrame:CGRectMake(450, 0, 100, 100)];
    fourthImageView.image = [UIImage imageNamed:@"guinness"];
    fourthImageView.contentMode = UIViewContentModeTop;
    
    [self.view addSubview:firstImageView];
    [self.view addSubview:secondImageView];
    [self.view addSubview:thirdImageView];
    [self.view addSubview:fourthImageView];
    
    
//   Perform some simple animations animating the `frame`, `center`, `alpha`, `backgroundColor` of a view.
    
    [UIView animateWithDuration:2.0f animations:^{
        view.backgroundColor = [UIColor blueColor];
        secondView.alpha = 0.0f;
    }];
    
    
//  Make a view fade out using an animation and then make it fade back in a second after it totally disappeared.
    
    [UIView animateWithDuration:2.0 animations:^{
        fourthImageView.alpha = 0.0f;
    } completion:^(BOOL finished)
    {
        [UIView animateWithDuration:2.0 animations:^{
            fourthImageView.alpha = 1.0;
        }];
    }];
    
//    Create two UISlider instances and use them to configure the `transform` property of a view. Use the
    
    self.transformableView = [[UIView alloc] initWithFrame:CGRectMake(0, 600, 300, 300)];
    self.transformableView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.transformableView];
    
    UIView *anotherView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
    anotherView.backgroundColor = [UIColor orangeColor];
    [self.transformableView addSubview:anotherView];
    
    UISlider *scaleSlider = [[UISlider alloc] initWithFrame:CGRectMake(400, 800, 200, 50)];
    scaleSlider.minimumValue = 1.0;
    scaleSlider.maximumValue = 5.0;
    scaleSlider.value = 1.0;
    [scaleSlider addTarget:self
                    action:@selector(scaleSliderValueChanged:)
          forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:scaleSlider];
    
    UISlider *rotateSlider = [[UISlider alloc] initWithFrame:CGRectMake(400, 900, 200, 50)];
    rotateSlider.minimumValue = - M_PI / 2;
    rotateSlider.maximumValue = M_PI / 2;
    rotateSlider.value = 0.0f;
    [rotateSlider addTarget:self
                     action:@selector(rotateSliderValueChanged:)
           forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:rotateSlider];
}

- (void)scaleSliderValueChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    self.transformableView.transform =
    CGAffineTransformMakeScale(slider.value, slider.value);
    
}

- (void)rotateSliderValueChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    self.transformableView.transform =
        CGAffineTransformMakeRotation(slider.value);
}

@end
