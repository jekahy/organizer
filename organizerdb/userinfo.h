//
//  userinfo.h
//  organizerdb
//
//  Created by Жека Г on 3/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface userinfo : NSObject{
    int userid;
    NSString *login;
    NSString *password;
    
}

@property (nonatomic, assign)int userid;
@property (nonatomic, copy)NSString *login;
@property (nonatomic, copy)NSString *password;
-(id) create:(int)userid login:(NSString*)login password:(NSString*)password;


@end
