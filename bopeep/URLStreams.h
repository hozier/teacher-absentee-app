//
//  URLStreams.h
//  bopeep
//
//  Created by Philron Hozier on 11/26/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface URLStreams : NSObject

@property (nonatomic, strong) NSString *myString;
@property (nonatomic, strong) NSString *myLocalized;

-(NSString *) NSSHURL_OFF:(NSString *)string;

-(NSString *) NSSHURL_ON:(NSString *)string;

@end
