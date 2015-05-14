//
//  WallViewController.m
//  FindMyFriends
//
//  Created by Frank Desimini on 2015-05-13.
//  Copyright (c) 2015 Eff Dee Productions. All rights reserved.
//

#import "WallViewController.h"

@interface WallViewController ()

@end

@implementation WallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // showing the navigation bar (it was turned off from previous VC
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
    // removing the back button on the navigation bar - i don't want to go back to login screen
    self.navigationItem.hidesBackButton = YES;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
