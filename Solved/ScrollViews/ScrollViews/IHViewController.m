//
//  IHViewController.m
//  ScrollViews
//
//  Created by Francisco Sevillano on 25/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong)IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) UILabel *firstLabel;
@property (nonatomic, strong) UILabel *secondLabel;

@property (nonatomic, strong) UIBarButtonItem *dragging;
@property (nonatomic, strong) UIBarButtonItem *decelerating;

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    Add a label to the scroll view at the (0,0) coordinates. Why can't we see it?
    self.firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    self.firstLabel.text = @"some text";
    [self.scrollView addSubview:self.firstLabel];
    
//    Add some padding so the navigation bar doesn't overlap any of the scroll view's content. Adjust the scroll indicators accordingly. 
    self.scrollView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
    self.scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(64, 0, 0, 0);
    
//    Add a second label at a point larger than the scroll view frame to see how the scrolling indicators appear.
    self.secondLabel =
        [[UILabel alloc] initWithFrame:CGRectMake(0, self.scrollView.frame.size.height + 100, 100, 500)];
    self.secondLabel.text = @"second label";
    [self.scrollView addSubview:self.secondLabel];
    self.scrollView.contentSize =
        CGSizeMake(self.scrollView.frame.size.width,
                   self.secondLabel.frame.origin.y + self.secondLabel.frame.size.height);
    
    [self setTrackingLabels];
}


//Scroll between two specific points in the scroll view, one animatedly and the other one without animation. We can use the two navigation bar items to trigger this behaviour
- (IBAction)scrollToFirstLabel:(id)sender
{
    [self.scrollView scrollRectToVisible:self.firstLabel.frame animated:YES];
}

- (IBAction)scrollToSecondLabel:(id)sender
{
    [self.scrollView scrollRectToVisible:self.secondLabel.frame animated:NO];
}

#pragma mark UIScrollViewDelegate methods 

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    self.dragging.tintColor = [UIColor greenColor];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    self.dragging.tintColor = [UIColor redColor];
    if (decelerate)
    {
        self.decelerating.tintColor = [UIColor greenColor];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    self.decelerating.tintColor = [UIColor redColor];
}

#pragma mark Private methods

- (void)setTrackingLabels
{
//    Have three red bar button items in the tool for the `tracking`, `dragging` and `decelerating` properties of a scroll view. Then have a scrollview that we can interact with. When we do it, those labels turn to green as the properties they represent become `YES`.
    
    self.scrollView.delegate = self;
    
    self.dragging =
        [[UIBarButtonItem alloc] initWithTitle:@"dragging" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.dragging.tintColor = [UIColor redColor];
    
    self.decelerating =
        [[UIBarButtonItem alloc] initWithTitle:@"decelerating" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.decelerating.tintColor = [UIColor redColor];
    
    NSArray *toolbarItems = @[self.dragging,self.decelerating];
    [self setToolbarItems:toolbarItems animated:YES];
    
    [self.navigationController setToolbarHidden:NO];
}

@end
