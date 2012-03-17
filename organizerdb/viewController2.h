//
//  viewController2.h
//  organizerdb
//
//  Created by Жека Г on 3/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface viewController2 : UIViewController{
    IBOutlet UIImageView *image;
    IBOutlet UINavigationItem *navItem;
    IBOutlet UILabel *label;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UIButton *showDate;
    
    
}
-(void)changeNavItemTitle:(NSString*)title;
-(IBAction)showDate:(id)sender;

@end
