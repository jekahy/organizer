//
//  userdatabase.m
//  organizerdb
//
//  Created by Жека Г on 3/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "userdatabase.h"
#import "userinfo.h"



@implementation UserDatabase

static UserDatabase *database;


+(UserDatabase *)database{
    if(database==nil){
        database=[[UserDatabase alloc]init];
    }
    return database;
    
    
}


-(id)init{
    self=[super init];
    if(self){
        NSString *sqlitedb=[[NSBundle mainBundle] pathForResource:@"userdb" ofType:@"sqlite3"];
        if(sqlite3_open([sqlitedb UTF8String], &database)!=SQLITE_OK){
            NSLog(@"Failed to load database!\n");
        }
        NSLog(@"database did load correctly!!!!");
        
    }
    return self;
    
    
}

-(NSArray *)getallusers{
    NSMutableArray *returnall=[[NSMutableArray alloc]init];
    NSString *query=@"SELECT * FROM users3";
    sqlite3_stmt *statement;
    if((sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil))==SQLITE_OK){
        while (sqlite3_step(statement)==SQLITE_ROW) {
            int uniqueid=sqlite3_column_int(statement, 0);
            char *loginchars=(char*)sqlite3_column_text(statement, 1);
            char *passwordchars=(char*)sqlite3_column_text(statement, 2);
            NSString *login=[[NSString alloc]initWithUTF8String:loginchars];
            NSString *password=[[NSString alloc]initWithUTF8String:passwordchars];
            
            
            
            
            //userinfo *info=[[userinfo alloc]create:uniqueid password:password :login password:password];
            userinfo *info=[[userinfo alloc]create:uniqueid login:login password:password];
            [returnall addObject:info];
            [login release];
            [password release];
            [info release];
        }
        sqlite3_finalize(statement);
    }
    NSLog(@"%@",returnall);
    return returnall;
}

-(void)reg:(NSString *)name password:(NSString *)passowrd{
    //int p=1;
    NSString *insertSqlLog=[ NSString stringWithFormat:@"INSERT INTO users3(login,password) VALUES('%@','%@');",name,passowrd];
    //static sqlite3_stmt *statement;
    char *error;
    NSString *insertSqlRecord=[ NSString stringWithFormat:@"INSERT INTO users4(login) VALUES('%@');",name];
        
    
    if((sqlite3_exec(database, [insertSqlLog UTF8String], NULL, NULL, &error)==SQLITE_OK) && sqlite3_exec(database, [insertSqlRecord UTF8String], NULL, NULL, NULL)==SQLITE_OK){
        //sqlite3_bind_int(statement, 0, 3);
        //sqlite3_bind_text(statement, 1, [name UTF8String], -1, NULL);
        //sqlite3_bind_text(statement, 2, [passowrd UTF8String], -1, NULL);
        NSLog(@"sqlite3 record added successfully!");
        
    } else {
    /*if(sqlite3_step(statement)==SQLITE_DONE){
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"add record" message:@"record added" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
        [alert release];
        alert=nil;
        
    } else {
     */   
     UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"record" message:@"record was not added" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
        [alert release];
        alert=nil;
    
    }
    
    
    //sqlite3_reset(statement);
    //sqlite3_finalize(statement);

    //sqlite3_close(database);
    
    ///[passowrd release];
    //[name release];
    

}

-(void)addRecord:(NSString *)name date:(NSString *)date type:(NSString *)type record:(NSString *)record{
    NSString *insertSqlRecord=[ NSString stringWithFormat:@"INSERT INTO users4(login, date,type, record) VALUES('%@','%@','%@','%@');",name,date,type,record];
    if(sqlite3_exec(database, [insertSqlRecord UTF8String], NULL, NULL, NULL)==SQLITE_OK){
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"record" message:@"record successfully added!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
        [alert release];
        alert=nil;
    } else {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"record" message:@"record was not added!" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        [alert show];
        [alert release];
        alert=nil;
    }
}

/*
CREATE  TABLE "main"."users4" ("login" TEXT, "date" DATETIME, "record" TEXT)
*/
-(void)dealloc{
    

    
    sqlite3_close(database);
    [super dealloc];
}





@end
