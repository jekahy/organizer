//
//  addNewRecordViewController.h
//  organizerdb
//
//  Created by Жека Г on 3/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addNewRecordViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>{
     UIButton *addButton;
     UITextField *textField;
     UIPickerView *probjectPicker;
     UIPickerView *typePicker;
     UITextView *textView;
    NSArray *arrayForType;
    NSArray *arrayForProjects;
}
@property(nonatomic,retain)IBOutlet UITextField *textField;
@property(nonatomic,retain)IBOutlet UIPickerView *probjectPicker;
@property(nonatomic,retain)IBOutlet UIPickerView *typePicker;
@property(nonatomic,retain)IBOutlet UITextView *textView;
@property(nonatomic,retain)NSArray *arrayForType;
@property(nonatomic,retain)NSArray *arrayForProjects;


-(IBAction)addNewRecord:(id)sender;
@end
