//
//  IHViewController.m
//  Pagination
//
//  Created by Francisco Sevillano on 26/05/14.
//  Copyright (c) 2014 Ironhack. All rights reserved.
//

#import "IHViewController.h"

@interface IHViewController ()

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) NSArray *beers;

@end

@implementation IHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *alhambra = [UIImage imageNamed:@"alhambra"];
    UIImage *estrellaGalicia = [UIImage imageNamed:@"estrella_galicia"];
    UIImage *guinness = [UIImage imageNamed:@"guinness"];
    UIImage *mahou = [UIImage imageNamed:@"mahou"];
    UIImage *sierraNevada = [UIImage imageNamed:@"sierra_nevada"];
    
    self.beers = @[alhambra,estrellaGalicia,guinness,mahou,sierraNevada];
    
    CGFloat xOffset = 0;
    for (UIImage *beerImage in self.beers)
    {
        UIImageView *imageView =
            [[UIImageView alloc] initWithFrame:CGRectMake(xOffset, 0, self.scrollView.frame.size.width, self.scrollView.frame.size.height)];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.image = beerImage;
        [self.scrollView addSubview:imageView];
        xOffset += self.scrollView.frame.size.width;
    }
    
    self.scrollView.contentSize =
        CGSizeMake(xOffset, self.scrollView.frame.size.height);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
