//
//  userdatabase.h
//  organizerdb
//
//  Created by Жека Г on 3/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "/usr/include/sqlite3.h"
#import "userinfo.h"




@interface UserDatabase : NSObject{
    sqlite3 *database;
}
+(UserDatabase *)database;
-(NSArray *)getallusers;
//+(UserDatabase *)database;
-(void)reg:(NSString*)name password:(NSString*)passowrd;
-(void)addRecord:(NSString*)name date:(NSString*)date type:(NSString*)type record:(NSString*)record;
@end
