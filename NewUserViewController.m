//
//  NewUserViewController.m
//  FindMyFriends
//
//  Created by Frank Desimini on 2015-05-13.
//  Copyright (c) 2015 Eff Dee Productions. All rights reserved.
//

#import "NewUserViewController.h"
#import <Parse/Parse.h>

@interface NewUserViewController ()

@end

@implementation NewUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        [self.createUsernameTextfield becomeFirstResponder];
    
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

- (IBAction)createAccount:(id)sender {
    
    //Parse object - STORING DATA
    PFObject *createAccount =[PFObject objectWithClassName:@"CreateAccount"];
    [createAccount setObject:@"franktest" forKey:@"username"];
    [createAccount setObject:@"12345" forKey:@"password"];
    [createAccount setObject:@"12345" forKey:@"confirmPassword"];
    [createAccount saveInBackground];
    
//    [self prepareForSegue:<#(UIStoryboardSegue *)#> sender:<#(id)#>]
    
    
}

- (IBAction)cancel:(id)sender {
    
    
}
@end
