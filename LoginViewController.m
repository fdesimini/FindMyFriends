//
//  LoginViewController.m
//  FindMyFriends
//
//  Created by Frank Desimini on 2015-05-13.
//  Copyright (c) 2015 Eff Dee Productions. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
        
}

- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (void)processFieldEntries {
//    // Get the username and password text
//    NSString *username = self.userNameField.text;
//    NSString *password = self.passWordField.text;
//    NSString *noUsernameText = @"username";
//    NSString *noPasswordText = @"password";
//    NSString *errorText = @"No ";
//    NSString *errorTextJoin = @" or ";
//    NSString *errorTextEnding = @" entered";
//    BOOL textError = NO;
//    
//    // Messaging nil will return 0, so these checks implicitly check for nil text.
//    if (username.length == 0 || password.length == 0) {
//        textError = YES;
//        
//        // Set up the keyboard for the first field missing input:
//        if (password.length == 0) {
//            [self.passWordField becomeFirstResponder];
//        }
//        if (username.length == 0) {
//            [self.userNameField becomeFirstResponder];
//        }
//    }
//    
//    if ([username length] == 0) {
//        textError = YES;
//        errorText = [errorText stringByAppendingString:noUsernameText];
//    }
//    
//    if ([password length] == 0) {
//        textError = YES;
//        if ([username length] == 0) {
//            errorText = [errorText stringByAppendingString:errorTextJoin];
//        }
//        errorText = [errorText stringByAppendingString:noPasswordText];
//    }
//    
//    if (textError) {
//        errorText = [errorText stringByAppendingString:errorTextEnding];
//        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:errorText
//                                                            message:nil
//                                                           delegate:self
//                                                  cancelButtonTitle:nil
//                                                  otherButtonTitles:@"OK", nil];
//        [alertView show];
//        return;
//    }

    // Everything looks good; try to log in.
    
//    // Set up activity view
//    self.activityViewVisible = YES;
//    
//    [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser *user, NSError *error) {
//        // Tear down the activity view in all cases.
//        self.activityViewVisible = NO;
//        
//        if (user) {
//            [self.delegate loginViewControllerDidLogin:self];
//        } else {
//            // Didn't get a user.
//            NSLog(@"%s didn't get a user!", __PRETTY_FUNCTION__);
//            
//            NSString *alertTitle = nil;
//            
//            if (error) {
//                // Something else went wrong
//                alertTitle = [error userInfo][@"error"];
//            } else {
//                // the username or password is probably wrong.
//                alertTitle = @"Couldn’t log in:\nThe username or password were wrong.";
//            }
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:alertTitle
//                                                                message:nil
//                                                               delegate:self
//                                                      cancelButtonTitle:nil
//                                                      otherButtonTitles:@"OK", nil];
//            [alertView show];
//            
//            // Bring the keyboard back up, because they'll probably need to change something.
//            [self.usernameField becomeFirstResponder];
//        }
//    }];
//}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginButton:(UIButton *)sender {
    
    //Parse object - STORING DATA
    PFObject *myLogin =[PFObject objectWithClassName:@"Login"];
    [myLogin setObject:_userName.text forKey:@"username"];
    [myLogin setObject:_passWord.text forKey:@"password"];
    [myLogin saveInBackground];

    
//    [self.view endEditing:YES];
    
}

- (IBAction)signUp:(id)sender {
}
@end
