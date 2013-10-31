//
//  AppDelegate.m
//  DiaosiRun
//
//  Created by Yu Yichen on 5/28/13.
//  Copyright (c) 2013 Yu Yichen. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    [self setPreferenceDefaults];
    
    return YES;
}

/*******************************************************************************
 * @method setPreferencesDefaults
 ******************************************************************************/
- (void)setPreferenceDefaults
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *appDefaults = [NSDictionary dictionaryWithObject:[NSDate date]
                                                            forKey:@"Initial Launch"];
    [defaults registerDefaults:appDefaults];
    // Set your intial preferences in a .plist
    //[[NSUserDefaults standardUserDefaults] registerDefaults:[NSDictionary
    //dictionaryWithContentsOfFile:[[NSBundle mainBundle]
    //pathForResource:@"Defaults" ofType:@"plist"]]];
    NSLog(@"NSUserDefaults: %@", [[NSUserDefaults standardUserDefaults]
                                  dictionaryRepresentation]);
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
    
    
    //make sure when coming into the background, the game will pause
    NSLog(@"Going into background.");
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard"
                                                             bundle: nil];
    ViewController *controller=(ViewController *)[mainStoryboard instantiateViewControllerWithIdentifier:@"GameController"];
    
    controller.paused=true;
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
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    
}

@end
