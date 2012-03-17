//
//  userinfo.m
//  organizerdb
//
//  Created by Жека Г on 3/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "userinfo.h"

@implementation userinfo

@synthesize login, password, userid;

-(id)create:(int)num login:(NSString*)name password:(NSString*)pass{
    self=[super init];
    if(self){
        
        self.userid=num;
        self.login=name;
        self.password=pass;
    }
    
    return self;
    
    
    
}

-(void)dealloc{
    [login release];
    [password release];
    
    

    [super dealloc];
}

@end
