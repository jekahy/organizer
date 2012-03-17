//
//  registrationViewController.h
//  organizerdb
//
//  Created by Жека Г on 3/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface registrationViewController : UIViewController{
    IBOutlet UITextField *usernameField;
    IBOutlet UITextField *userpasswordField;
    IBOutlet UIButton *registerButton;
}
-(IBAction)reg:(id)sender;

-(IBAction) resignFirstResponder:(id)sender;
@property(nonatomic,retain)UITextField *usernameField;
@property(nonatomic,retain)UITextField *userpasswordField;
@property (nonatomic,retain)UIButton *registerButton;

@end
