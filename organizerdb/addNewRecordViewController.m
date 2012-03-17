//
//  addNewRecordViewController.m
//  organizerdb
//
//  Created by Жека Г on 3/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "addNewRecordViewController.h"

@implementation addNewRecordViewController


@synthesize typePicker,textView,textField,probjectPicker,arrayForType,arrayForProjects;

-(IBAction)addNewRecord:(id)sender{
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSArray *firstPickerItems=[[NSArray alloc]initWithObjects:@"Chupackabra",@"Valkirye","Panther", nil];  
    NSArray *secondPickerItems=[[NSArray alloc]initWithObjects:@"Working",@"Investigating",@"Relaxing", nil];
    self.arrayForType=secondPickerItems;
    self.arrayForProjects=firstPickerItems;
    [secondPickerItems release];
    [firstPickerItems release];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    self.arrayForType=nil;
    self.arrayForProjects=nil;
}

-(void)dealloc{
    
    [arrayForType release];
    [arrayForProjects release];
    [super dealloc];
    
}

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 3;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
