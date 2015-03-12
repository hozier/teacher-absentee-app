//
//  URLStreams.m
//  bopeep
//
//  Created by Philron Hozier on 11/26/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import "URLStreams.h"

@implementation URLStreams

@synthesize myString, myLocalized;


-(NSString *) NSSHURL_OFF:(NSString *)string{
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/
    //          OFFLINE TESTING`                                                                                                    +++++++/
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++/
    NSString *resourceURLString = [[NSBundle mainBundle] resourceURL];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:string,resourceURLString]];
    NSURLRequest *requestOFFLINE = [NSURLRequest requestWithURL:url];
    NSURLResponse* responseFFLINE = nil;
    NSError *errorFFLINE = nil;
    NSData *dataOFFLINE = [NSURLConnection sendSynchronousRequest:requestOFFLINE returningResponse:&responseFFLINE error:&errorFFLINE];
    //storing data in a string
    
    
    // ONCE we synth towrads top, No NEED to DO NSSTRING *str ! ! ! !
     myLocalized = [[NSString alloc] initWithData:dataOFFLINE encoding:NSUTF8StringEncoding];
    
    //NSLog(@"pathpathpathpathpathpathpathpathpathpath%@", myLocalized);
    
    
    /*************************************************************************/
    NSLog(@"%@", url); return myLocalized;
}

-(NSString *) NSSHURL_ON:(NSString *)string{
    NSURL *goHERE = [NSURL URLWithString:[NSString stringWithFormat:@"%@", string]];//@"http://www2.qcc.mass.edu/facAbsence/default.asp"]];

    
    //when connection is made from the link, I wanna check to see if link cn run online. if OFFLINE, throw an exception
    
    NSURLRequest *request = [NSURLRequest requestWithURL:goHERE];
    
    NSURLResponse* response = nil;
    NSError *error = nil;
    NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    //storing data in a string
     myString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return myString;
}

@end
