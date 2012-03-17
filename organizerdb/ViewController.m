//
//  ViewController.m
//  organizerdb
//
//  Created by Жека Г on 3/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "userinfo.h"
#import "userdatabase.h"
#import "viewController2.h"


@implementation ViewController

@synthesize usernameField;
@synthesize userpasswordField;
@synthesize loginButton;
@synthesize loginIndicator;

-(IBAction)resignFirstResponder:(id)sender{
    [usernameField resignFirstResponder];
    [userpasswordField resignFirstResponder];
}

-(IBAction) login: (id) sender{
    //viewController2 *view=[[[viewController2 alloc]init]autorelease];
   //[view setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    //[self presentModalViewController:view animated:YES];
    //self presentViewController:view animated:YES completion:NULL];
    NSArray *allusers=[[UserDatabase database]getallusers];
    NSString *login=[usernameField text];
    NSString *password=[userpasswordField text];
    
    
    
    
   
    
    for(int i=0;i<(allusers).count;i++){
        if([[[allusers objectAtIndex:i] login] isEqualToString: login]){
            
            if([[[allusers objectAtIndex:i]password]isEqualToString:password]){
               [self performSegueWithIdentifier:@"tomain" sender:self];
                viewController2 *view2=[[viewController2 alloc]init];
                [view2 changeNavItemTitle:login];
                 
                
                            
                break;
                
            
            } else{
                NSLog(@"wrong password!");
                break;
            }
            
            
            //[self performSegueWithIdentifier:@"tomainview" sender:self];
           // break;
            //NSLog(@"founded");
        }
        
    }
    //[self performSegueWithIdentifier:@"tomainview" sender:self];
    
    
}

-(void)dealloc{
    [usernameField release];
    [userpasswordField release];
    [loginButton release];
    [loginIndicator release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    NSArray *usersinfo=[[UserDatabase database]getallusers];
    for(userinfo *info in usersinfo){
        NSLog(@"%d - %@ - %@",info.userid, info.login, info.password);
        
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
