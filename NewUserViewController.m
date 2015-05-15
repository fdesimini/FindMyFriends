//
//  NewUserViewController.m
//  FindMyFriends
//
//  Created by Frank Desimini on 2015-05-13.
//  Copyright (c) 2015 Eff Dee Productions. All rights reserved.
//

#import "NewUserViewController.h"
#import <Parse/Parse.h>
#import "WallViewController.h"


@interface NewUserViewController ()

@end

@implementation NewUserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // showing the navigation bar (it was turned off from previous VC
    [[self navigationController] setNavigationBarHidden:NO animated:YES];

    [self.createUsernameTextfield becomeFirstResponder];
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    [segue.destinationViewController isKindOfClass:[WallViewController class]];
}
*/

- (IBAction)createAccount:(id)sender {
    
    
    
    
    [self processFieldEntries];
    
}

#pragma mark Sign Up

- (void)processFieldEntries {
    // Check that we have a non-zero username and passwords.
    // Compare password and passwordAgain for equality
    // Throw up a dialog that tells them what they did wrong if they did it wrong.
    
    NSString *username = self.createUsernameTextfield.text;
    NSString *password = self.createPasswordTextfield.text;
    NSString *passwordAgain = self.confirmPasswordTextfield.text;
    NSString *errorText = @"Please ";
    NSString *usernameBlankText = @"enter a username";
    NSString *passwordBlankText = @"enter a password";
    NSString *joinText = @", and ";
    NSString *passwordMismatchText = @"enter the same password twice";
    
    BOOL textError = NO;
    
    // Messaging nil will return 0, so these checks implicitly check for nil text.
    if (username.length == 0 || password.length == 0 || passwordAgain.length == 0) {
        textError = YES;
        
        // Set up the keyboard for the first field missing input:
        if (passwordAgain.length == 0) {
            [self.confirmPasswordTextfield becomeFirstResponder];
        }
        if (password.length == 0) {
            [self.createPasswordTextfield becomeFirstResponder];
        }
        if (username.length == 0) {
            [self.createPasswordTextfield becomeFirstResponder];
        }
        
        if (username.length == 0) {
            errorText = [errorText stringByAppendingString:usernameBlankText];
        }
        
        if (password.length == 0 || passwordAgain.length == 0) {
            if (username.length == 0) { // We need some joining text in the error:
                errorText = [errorText stringByAppendingString:joinText];
            }
            errorText = [errorText stringByAppendingString:passwordBlankText];
        }
    } else if ([password compare:passwordAgain] != NSOrderedSame) {
        // We have non-zero strings.
        // Check for equal password strings.
        textError = YES;
        errorText = [errorText stringByAppendingString:passwordMismatchText];
        [self.createPasswordTextfield becomeFirstResponder];
    }
    
    if (textError) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:errorText message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alertView show];
        return;
    }
    
    // Everything looks good; try to log in.
//    PAWActivityView *activityView = [[PAWActivityView alloc] initWithFrame:CGRectMake(0.f, 0.f, self.view.frame.size.width, self.view.frame.size.height)];
//    UILabel *label = activityView.label;
//    label.text = @"Signing You Up";
//    label.font = [UIFont boldSystemFontOfSize:20.f];
//    [activityView.activityIndicator startAnimating];
//    [activityView layoutSubviews];
//    
//    [self.view addSubview:activityView];
    
    // Call into an object somewhere that has code for setting up a user.
    // The app delegate cares about this, but so do a lot of other objects.
    // For now, do this inline.
    
//    PFUser *user = [PFUser user];
//    user.username = username;
//    user.password = password;
//    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//        if (error) {
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error userInfo][@"error"]
//                                                                message:nil
//                                                               delegate:self
//                                                      cancelButtonTitle:nil
//                                                      otherButtonTitles:@"OK", nil];
//            [alertView show];
//            [activityView.activityIndicator stopAnimating];
//            [activityView removeFromSuperview];
//            // Bring the keyboard back up, because they'll probably need to change something.
//            [self.usernameField becomeFirstResponder];
//            return;
//        }
//        
//        // Success!
//        [activityView.activityIndicator stopAnimating];
//        [activityView removeFromSuperview];
//        
//        [self dismissViewControllerAnimated:YES completion:nil];
//        [self.delegate newUserViewControllerDidSignup:self];
//    }];
    
}

- (IBAction)cancel:(id)sender {
    
    
}







@end
