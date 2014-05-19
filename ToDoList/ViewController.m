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
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor]; // Can also use [UIColor colorWithRed:0.462 green:0.749 blue:0.937 alpha:1.0];
	
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];  // Create a button
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);                          // x, y, width, height
    [self.fiftyPercentButton setTitle:@"Make 50%!" forState:UIControlStateNormal];          // Normal button view
    [self.fiftyPercentButton setTitle:@"Clicked!" forState:UIControlStateHighlighted];      // Highlighted button view
    [self.fiftyPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside]; // Call buttonPressed
    [self.view addSubview:self.fiftyPercentButton];
    
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];  // Create a button
    self.hundredPercentButton.frame = CGRectMake(100, 300, 100, 44);                          // x, y, width, height
    [self.hundredPercentButton setTitle:@"Make 100%!" forState:UIControlStateNormal];         // Normal button view
    [self.hundredPercentButton setTitle:@"Clicked!" forState:UIControlStateHighlighted];      // Highlighted button view
    [self.hundredPercentButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside]; // Call buttonPressed
    [self.view addSubview:self.hundredPercentButton];
    
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.text = @"Hello, welcome to my app!";
    [self.view addSubview:firstLabel];
}

- (void)buttonPressed:(UIButton *)sender
{
    NSLog(@"Button pressed, sender: %@", sender);
    //self.view.alpha = ((double)arc4random() / 0x10000000);      // Randomize the transparency
    if ([sender isEqual:self.fiftyPercentButton]) {
        self.view.alpha = 0.5;
    } else {
        self.view.alpha = 1;
    }
    [sender removeFromSuperview];                               // Remove the button
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
