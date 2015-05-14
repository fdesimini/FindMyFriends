//
//  NewUserViewController.h
//  FindMyFriends
//
//  Created by Frank Desimini on 2015-05-13.
//  Copyright (c) 2015 Eff Dee Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewUserViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *createUsernameTextfield;
@property (strong, nonatomic) IBOutlet UITextField *createPasswordTextfield;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextfield;



- (IBAction)createAccount:(id)sender;

- (IBAction)cancel:(id)sender;




@end
