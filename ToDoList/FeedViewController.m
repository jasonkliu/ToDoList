//
//  FeedViewController.m
//  ToDoList
//
//  Created by Jason Liu on 5/19/14.
//
//

#import "FeedViewController.h"
#import "ProfileViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"icon_dryer"]; // Add an image
        UIImageView *greggView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_dryer"]]; // Big image
        [greggView setContentMode:UIViewContentModeScaleAspectFit];   // How view lays out content
        greggView.frame = self.view.frame;
        [self.view addSubview:greggView];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    UIButton *tryiosView = [UIButton buttonWithType:UIButtonTypeCustom];
    [tryiosView setImage:[UIImage imageNamed:@"icon_dryer"] forState:UIControlStateNormal];
    [tryiosView setImage:[UIImage imageNamed:@"icon_dryer"] forState:UIControlStateHighlighted];
    [tryiosView setFrame:CGRectMake(15, 15, 100, 100)];
    [self.view addSubview:tryiosView];
    [tryiosView addTarget:self action:@selector(showZoomedPicture:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *favoritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favoritesButton.frame = CGRectMake(60, 100, 200, 44);
    [favoritesButton setTitle:@"View Favorites" forState:UIControlStateNormal];
    [self.view addSubview:favoritesButton];
    [favoritesButton addTarget:self action:@selector(showFavorites:) forControlEvents:UIControlEventTouchUpInside];
}

// Opens the ProfileViewController as part of the stack
- (void)showFavorites:(UIButton *)sender
{
    ProfileViewController *favoritesViewController = [[ProfileViewController alloc] init];
    [self.navigationController pushViewController:favoritesViewController animated:YES];    // Push favorites view controller onto stack
}

// Set up a new ViewController on the fly
- (void)showZoomedPicture:(UIButton *)sender
{
    UIViewController *tryiosImageViewController = [[UIViewController alloc] init];
    tryiosImageViewController.view.frame = self.view.frame;
    tryiosImageViewController.title = @"Try IOS Logo";
    
    UIImageView *tryiosView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_dryer"]];
    [tryiosView setContentMode:UIViewContentModeScaleAspectFit];
    tryiosView.frame = tryiosImageViewController.view.frame;
    [tryiosImageViewController.view addSubview:tryiosView];
    
    [self.navigationController pushViewController:tryiosImageViewController animated:YES];
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
