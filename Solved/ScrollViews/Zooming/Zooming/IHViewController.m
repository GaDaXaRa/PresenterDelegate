//
//  IHViewController.m
//  Zooming
//
//  Created by Francisco Sevillano on 26/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;

@end

@implementation IHViewController

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

- (IBAction)sliderValueChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    self.scrollView.zoomScale = slider.value;
}

@end
