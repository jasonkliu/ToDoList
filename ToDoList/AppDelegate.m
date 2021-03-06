//
//  AppDelegate.m
//  ToDoList
//
//  Created by Jason Liu on 5/7/14.
//
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "FeedViewController.h"
#import "ProfileViewController.h"
#import "FeedTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"Application Did Finish Launching");             // Logs this if the application successfully launches.
    
    // Make the window yellow with buttons and respond to events.
    CGRect viewRect = [[UIScreen mainScreen] bounds];       // Main screen rectangle used in application
    NSLog(@"Screen is %f tall and %f wide", viewRect.size.height, viewRect.size.width);
    /*self.window = [[UIWindow alloc] initWithFrame:viewRect];// Refers to UIWindow *window
                   
    UIViewController *colorTouchVC = [[ViewController alloc] init]; // root view controller
    self.window.rootViewController = colorTouchVC;
    [self.window makeKeyAndVisible]; // Should receive all keyboard & non/touch events*/
    
    // Use a Tab controller to give tabs at the bottom of the screen.
    //FeedViewController *feedViewController = [[FeedViewController alloc] init]; // Title and image initialized in controller
    //FeedViewController *favoritesViewController = [[FeedViewController alloc] init];
    ProfileViewController *profileController = [[ProfileViewController alloc] init];
    //favoritesViewController.title = @"Favorites";
    //UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    // Use a TableViewController
    //FeedTableViewController *feedTableViewController = [[FeedTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    // Use a Navigation Controller and push like a stack
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:profileController];
    
    //[tabBarController setViewControllers:@[navController]];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
