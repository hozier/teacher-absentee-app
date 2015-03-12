//
// marquee.m
//  bopeep
//
//  Created by Philron Hozier on 9/2/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import "marquee.h"
#import "ViewController.h"
#import "Web.h"
#import "URLStreams.h"
#import "Toolshed.h"


@interface marquee ()

@end

@implementation marquee

@synthesize introARRAY, introSTRING, segueABSDisplay2;//segueABSDisplay3;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
     NSString *str = [[NSString alloc] init];
    
    Toolshed *screwdriver = [Toolshed new];
    
 
    NSMutableString *addallNs = [introSTRING mutableCopy];
    
    if ([introSTRING isEqualToString:@"There are currently no Faculty Absences to report."]){
        [self saySomething:addallNs];}
    else {
        
        // 734 922 3712 auntie maria.//347 232
        NSString *header = (@"Faculty Absence Listing\n");
        
        NSMutableString *titleList = [header mutableCopy];
        [titleList appendString:[screwdriver setCurrDate]];
        [titleList appendString:(@"\n\n")];
        str = [str stringByAppendingFormat:@"%@", titleList];
        
        for (int e = 0; e <[introARRAY count]; e++){
            NSString *curLine2 = [introARRAY objectAtIndex:e];
            
            
            str = [str stringByAppendingFormat:@"%@\n", curLine2];
            [self saySomething:str];
        }
    }
}



- (void)saySomething:(NSString *)greeting {
    
    //    if ([greeting rangeOfString:@"❝"].location != NSNotFound) {
    //        [segueABSDisplay2 setFont:[UIFont fontWithName:@"American Typewriter" size:15.25]];
    //        segueABSDisplay2.text= greeting;
    //    }
    
    [segueABSDisplay2 setFont:[UIFont fontWithName:@"American Typewriter" size:15.25]];
    segueABSDisplay2.text= greeting;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// ibactioin button pulls info to label <-- button pressed
- (IBAction)homish:(id)sender {
    //[self saySomething:@"helloooooooooooo"];
   // segueABSDisplay2.text= @"helloooooooooooo";
 //   [self carryoutMore];
    
    
}
@end
