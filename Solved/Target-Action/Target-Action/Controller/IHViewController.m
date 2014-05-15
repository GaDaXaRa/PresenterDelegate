//
//  IHViewController.m
//  Exercise1
//
//  Created by Francisco Sevillano on 15/04/14.
//  Copyright (c) 2014 Francisco Sevillano. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

//Exercise 4
@property (nonatomic, strong) UILabel *label;

//Exercise 5
@property (nonatomic, strong) UISwitch *toggle;
@property (nonatomic, strong) UILabel *switchLabel;

//Exercise 6
@property (nonatomic, strong) UISlider *slider;
@property (nonatomic, strong) UILabel *sliderLabel;


//Exercise 7
@property (nonatomic, strong) UISegmentedControl *segmentedControl;
@property (nonatomic, strong) UILabel *segmentedControlLabel;

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self exercise1];
    [self exercise2];
    [self exercise3];
    [self exercise4];
    [self exercise5];
    [self exercise6];
    [self exercise7];
}

#pragma mark Private methods 

- (void)exercise1
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 10, 100, 50);
    [self.view addSubview:button];
    
//   1.Set button's title for normal and highlighted state
    [button setTitle:@"Normal" forState:UIControlStateNormal];
    [button setTitle:@"Highlighted" forState:UIControlStateHighlighted];
    
//   2.When you press it, it should log "You pressed me!" or something similar
    [button addTarget:self
               action:@selector(buttonPressed)
     forControlEvents:UIControlEventTouchDown];
    
//   3.When you release it, it should log "You released me!
    [button addTarget:self
               action:@selector(buttonReleased)
     forControlEvents:UIControlEventTouchUpInside | UIControlEventTouchDragExit];
}

- (void)buttonPressed
{
    NSLog(@"button pressed");
}

- (void)buttonReleased
{
    NSLog(@"button released");
}

- (void)exercise2
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 10, 100, 50);
    [self.view addSubview:button];
    
//  1.Add images for normal and highlighted state
//  Note:To create an image use [UIImage imageNamed:@"image name"];
    UIImage *beerNormal = [UIImage imageNamed:@"icn-beer-normal"];
    UIImage *beerSelected = [UIImage imageNamed:@"icn-beer-selected"];
    [button setImage:beerNormal
            forState:UIControlStateNormal];
    [button setImage:beerSelected
            forState:UIControlStateHighlighted];
    
//   2.Add background images for button
    [button setBackgroundImage:[UIImage imageNamed:@"button_background_normal"]
                      forState:UIControlStateNormal];
    
    [button setBackgroundImage:[UIImage imageNamed:@"button_background_highlighted"]
                      forState:UIControlStateHighlighted];
}

- (void)exercise3
{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(300, 10, 300, 50)];
    [self.view addSubview:label];
    
//  1.Add some text to the label
    label.text = @"texto";
    
//  2.Add the Georgia font using the method fontWithName method in UIFont
    label.font = [UIFont fontWithName:@"Georgia" size:50.0f];
    
//  3.Change the label's text color
    label.textColor = [UIColor redColor];
}

- (void)exercise4
{
//    1.Add two buttons and a label so that when you press the first button the label
//    gets one text and when you press the other button the text changes
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 80, 100, 50);
    [self.view addSubview:button];
    
    [button setTitle:@"Left" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(button1Pressed) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(100, 80, 100, 50);
    [self.view addSubview:button2];
    
    [button2 setTitle:@"Right" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(button2Pressed) forControlEvents:UIControlEventTouchUpInside];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(200, 80, 100, 50)];
    self.label.text = @"Hola";
    self.label.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.label];
}

- (void)button1Pressed
{
    self.label.textAlignment = NSTextAlignmentLeft;
}

- (void)button2Pressed
{
    self.label.textAlignment = NSTextAlignmentRight;
}

- (void)exercise5
{
    
//  1.Using a switch, let's change the line break mode for a label. When it's off we
//  will use the truncate tail mode and when it's on we will use the truncate head.
    
    self.switchLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 200, 100, 50)];
    self.switchLabel.text = @"Hola caracola";
    [self.view addSubview:self.switchLabel];
    
    self.toggle = [[UISwitch alloc] initWithFrame:CGRectMake(10, 200, 50, 50)];
    [self.toggle addTarget:self
                    action:@selector(switchChanged)
          forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.toggle];
}

- (void)switchChanged
{
    if (self.toggle.isOn)
    {
        self.switchLabel.lineBreakMode = NSLineBreakByTruncatingHead;
    }
    else
    {
        self.switchLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
}

- (void)exercise6
{
    
//   1. Using a slider, let's change the font size of a label on the fly
    
    self.sliderLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 300, 200, 100)];
    self.sliderLabel.text = @"hola carcola";
    [self.view addSubview:self.sliderLabel];
    
    self.slider = [[UISlider alloc] initWithFrame:CGRectMake(10, 300, 100, 50)];
    self.slider.value = self.sliderLabel.font.pointSize;
    self.slider.minimumValue = 0.0f;
    self.slider.maximumValue = 50.0f;
    [self.view addSubview:self.slider];
    
    [self.slider addTarget:self action:@selector(sliderValueChanged) forControlEvents:UIControlEventValueChanged];
}

- (void)sliderValueChanged
{
    self.sliderLabel.font = [UIFont fontWithName:@"Georgia" size:self.slider.value];
}

- (void)exercise7
{
//   1. Using a segmented control, let's change between the different line break modes
//   for a label when it has multiple lines. I.e char wrapping, clipping and word wrapping.
    
    self.segmentedControl =
        [[UISegmentedControl alloc] initWithFrame:CGRectMake(10, 400, 300, 50)];
    [self.segmentedControl insertSegmentWithTitle:@"Clip" atIndex:0 animated:NO];
    [self.segmentedControl insertSegmentWithTitle:@"Word wrap" atIndex:1 animated:NO];
    [self.segmentedControl insertSegmentWithTitle:@"Char wrap" atIndex:2 animated:NO];
    [self.segmentedControl addTarget:self
                              action:@selector(segmentedControlValueChanged)
                    forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.segmentedControl];
    
    self.segmentedControlLabel =
        [[UILabel alloc] initWithFrame:CGRectMake(500, 400, 200, 100)];
    self.segmentedControlLabel.text = @"hola carasasdasddasdadadaddasdola mumucuca mucha asdada pepsicola";
    self.segmentedControlLabel.numberOfLines = 2;
    [self.view addSubview:self.segmentedControlLabel];
}

- (void)segmentedControlValueChanged
{
    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        self.segmentedControlLabel.lineBreakMode = NSLineBreakByClipping;
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        self.segmentedControlLabel.lineBreakMode = NSLineBreakByWordWrapping;
    }
    else
    {
        self.segmentedControlLabel.lineBreakMode = NSLineBreakByCharWrapping;
    }
}

@end
