//
//  ViewController.m
//  test1223
//
//  Created by Jason Liu on 5/18/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor]; // Can also use [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    CGRect viewRect = [[UIScreen mainScreen] bounds];       // Main screen rectangle used in application
    UIView *view = [[UIView alloc] initWithFrame:viewRect];      // Create a view the size of the screen
    self.view = view;
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Screen was touched");
    self.view.alpha = ((double)arc4random() / 0x100000000);  // Set transparency of the view
}

@end
