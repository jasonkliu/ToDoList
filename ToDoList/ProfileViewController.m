//
//  ProfileViewController.m
//  ToDoList
//
//  Created by Jason Liu on 5/19/14.
//
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"icon_dryer"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Set up scrollview with the length of the screen
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    self.scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    self.scrollView.contentSize = CGSizeMake(320, 600);
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 140, 280, 40)];
    nameLabel.text = @"Name: Jason";
    [self.scrollView addSubview:nameLabel];
    
    UILabel *cityLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 200, 280, 40)];
    cityLabel.text = @"From: Here";
    [self.scrollView addSubview:cityLabel];
    
    UITextView *biography = [[UITextView alloc] initWithFrame:CGRectMake(25, 260, 280, 180)];
    biography.font = [UIFont fontWithName:@"Helvetica" size:15];
    biography.editable = NO;
    biography.text = @"Hi, my name is Jason...";
    [self.scrollView addSubview:biography];
    
    UILabel *memberSinceLabel = [[UILabel alloc] initWithFrame:CGRectMake(25, 300, 280, 40)];
    memberSinceLabel.text = @"From: 2014";
    [self.scrollView addSubview:memberSinceLabel];
    
    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
