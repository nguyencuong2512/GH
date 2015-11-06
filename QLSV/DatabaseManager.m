//
//  DatabaseManager.m
//  QLSV
//
//  Created by Nguyen Ngoc Cuong on 10/14/15.
//  Copyright (c) 2015 Nguyen Cuong. All rights reserved.
//

#import "DatabaseManager.h"
#import "SinhVien.h"

@interface DatabaseManager ()

@end

@implementation DatabaseManager
+(DatabaseManager *)shareManager
{
    static DatabaseManager *shareMyManager=nil;
    if(shareMyManager ==nil)
        shareMyManager=[[self alloc]init];
    return  shareMyManager;
}
-(id)init{
    if(self ==[super init])
    {
        NSBundle *mainBundle = [NSBundle mainBundle];
        NSString *filePath =[mainBundle pathForResource:@"dssv" ofType:@"sqlite"];
        if(sqlite3_open([filePath UTF8String], &database)==SQLITE_OK)
        {
            NSLog(@"Ket noi thanh cong");
        }
        else
        {
            NSLog(@"Ket noi that bai");
            
        }
            
    }
    return  self;
}
//xoa listStudent

@end
