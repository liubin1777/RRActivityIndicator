//
//  ViewController.m
//  TestIndicator
//
//  Created by stephenliu on 7/1/15.
//  Copyright (c) 2015 stephenliu. All rights reserved.
//

#import "ViewController.h"
#import "RRActivityIndicator.h"
#import "UIView+AutoLayout.h"

@interface ViewController ()
{
    RRActivityIndicator *activityIndicator;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [self clickAdd];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickStart:(id)sender{
    [activityIndicator startAnimating];
}

- (IBAction)clickStop:(id)sender{
    [activityIndicator stopAnimating];
}

- (void)clickAdd{
    if (!activityIndicator) {
        activityIndicator = [[RRActivityIndicator alloc] initWithActivityIndicatorWithImage:[UIImage imageNamed:@"circle"]];
        [self.view addSubview:activityIndicator];
        [activityIndicator autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
        [activityIndicator setUserInteractionEnabled:NO];
    }
}

@end
