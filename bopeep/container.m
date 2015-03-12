//
//  container.m
//  log
//
//  Created by Philron Hozier on 11/27/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import "container.h"
#import "URLStreams.h"
#import "Toolshed.h"

@implementation container
//@synthesize user_U, user_P;



+(NSString *) seekLOGINP{//:(NSString *)password{
    NSString *user_U = [[NSString alloc]init];
//    NSMutableArray *intro =[Toolshed carryout:(NSString *)@"http://www2.qcc.mass.edu/facAbsence/default.asp" andseperate:(NSString *)@"/td>"
//                                        with:(NSString *)@"<strong>" andwith:(NSString *)@"</strong>" andwith:(NSString *)@"<font color=#000000 size=3>" andwith:(NSString *)@"</font>"];
    
    URLStreams *streams = [URLStreams new];
    NSString *sourcecode = [streams NSSHURL_ON:@"http://confucius.qcc.mass.edu/ics/Your_Records/My_Academic_Records.jnz"];
    
    user_U = [Toolshed scanString:sourcecode
                          startTag:(NSString *)@"<label for=""userName"">User Name:</label>"
                            endTag:(NSString *)@"<label for=""password"">Password:</label>"];
    
    NSLog(@"%@", user_U.description);
    
    return user_U;
}


+(NSString *) seekLOGINU{//:(NSString *)password{
     NSString *user_P = [[NSString alloc]init];
    user_P = [Toolshed scanString:@""
                         startTag:(NSString *)@"<label for=""password"">Password:</label>"
                           endTag:(NSString *)@"<input type=""submit"" name=""btnLogin"" value=""Login"" id=""btnLogin"">"];
    
    NSLog(@"%@", user_P.description);

    return user_P;
}

@end
