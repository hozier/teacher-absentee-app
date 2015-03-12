//
//  Toolshed.h
//  bopeep
//
//  Created by Philron Hozier on 11/26/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Toolshed : NSObject

+ (NSString *)scanString:(NSString *)string
                startTag:(NSString *)startTag
                  endTag:(NSString *)endTag;

-(NSMutableArray *) bookkeeper:(NSMutableArray *)jelly add_to:(NSMutableArray *)bean;

-(NSMutableArray *) carryout:(NSString *)source andseperate:(NSString *)tag with:(NSString *)start1 andwith:(NSString *)end1
                     andwith:(NSString *)start2 andwith:(NSString *)end2;

-(NSString *) returnaNATASHA_STR:(NSString *)source with:(NSString *)start1 andwith:(NSString *)end1;

-(NSString *)setCurrDate;

//- (void)saySomething:(NSString *)greeting;


@property(nonatomic, strong) NSString *scanString;
@property(nonatomic, strong) NSMutableArray *masterlock;
@property(nonatomic, strong) NSString *Natasha;
@property(nonatomic, strong) NSString *Nicky;
@property(nonatomic, strong) NSString *formattedDateString;
//@property (strong, nonatomic) IBOutlet UITextView *segueABSDisplay3;






@end
