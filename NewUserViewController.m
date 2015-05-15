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
    
        [self.createUsernameTextfield becomeFirstResponder];
    
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//    
//    [segue.destinationViewController isKindOfClass:[WallViewController class]];
//}


- (IBAction)createAccount:(id)sender {
    
    //Parse object - STORING DATA

//    PFObject *createAccount =[PFObject objectWithClassName:@"CreateAccount"];
//    [createAccount setObject:_createUsernameTextfield.text forKey:@"username"];
//    [createAccount setObject:_createPasswordTextfield.text forKey:@"password"];
//    [createAccount setObject:_confirmPasswordTextfield.text forKey:@"confirmPassword"];
//    [createAccount saveInBackground];
    
    //PFUser
    
    PFUser *createUser = [PFUser user];
    createUser.username = _createUsernameTextfield.text ;
    createUser.password = _createPasswordTextfield.text;

    
    //[createUser saveInBackground];
    // check signed up already
    
    /*
    [createUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {   // Hooray! Let them use the app now.
            NSLog(@"Test Authentication");
        } else {
            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];*/
    
    [createUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {   // Hooray! Let them use the app now.
            NSLog(@"Your are now signed up");
//            NSLog(@"@%", createUser.username);
//            NSLog(@"@%", createUser.password);
            /* User has signed up present view controller */
        } else
        {
//            NSString *errorString = [error userInfo][@"error"];
            // Show the errorString somewhere and let the user try again.
        }
    }];
   

    //
}

- (IBAction)cancel:(id)sender {
    
    
}
@end
