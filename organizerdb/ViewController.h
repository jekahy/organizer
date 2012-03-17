//
//  ViewController.h
//  organizerdb
//
//  Created by Жека Г on 3/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    IBOutlet UITextField *userpasswordField;
    IBOutlet UITextField *usernameField;
    IBOutlet UIButton *loginButton;
    IBOutlet UIActivityIndicatorView *loginIndicator;
    //IBOutlet UIView *view;
}
@property (nonatomic, retain)UITextField *userpasswordField;
@property (nonatomic, retain)UITextField *usernameField;
@property (nonatomic, retain)UIButton *loginButton;
@property (nonatomic, retain)UIActivityIndicatorView *loginIndicator;






    
-(IBAction) login: (id) sender;
-(IBAction) resignFirstResponder:(id)sender;


@end
