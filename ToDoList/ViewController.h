//
//  ViewController.h
//  test1223
//
//  Created by Jason Liu on 5/18/14.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;

- (void)buttonPressed:(UIButton *)sender;

@end
