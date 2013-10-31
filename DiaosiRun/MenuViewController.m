//
//  MenuViewController.m
//  DiaosiRun
//
//  Created by Yu Yichen on 6/13/13.
//  Copyright (c) 2013 Yu Yichen. All rights reserved.
//

#import "MenuViewController.h"
#import "SplashViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //show the splash view controller
    SplashViewController *svc=[[self storyboard]instantiateViewControllerWithIdentifier:@"SplashViewController"];
    [self presentViewController:svc animated:NO completion:^{
        NSLog(@"SplashViewController appears");
    }];
    [self performSelector:@selector(dismissSplashViewController) withObject:nil afterDelay:2];
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dismissSplashViewController{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Remove SplashViewController");
    }];
}

@end
