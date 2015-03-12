//
//  ViewController.m
//  bopeep
//
//  Created by Philron Hozier on 8/31/13.
//  Copyright (c) 2013 milieu. All rights reserved.
// this is my confessional, seven seconds before I hit the ground this is my confessional

/***
 * CREATING a connection between the button and the view controller
 
 
 09/02/2013.
 *
 **/

#import "ViewController.h"
#import "marquee.h"
#import "Web.h"
#import "URLStreams.h"
#import "Toolshed.h"
//#import "URLStreams.m"


@interface ViewController () /// The id data type can represent any Cocoa object. You want to use id here because it doesn’t matter what type of object sends the message.                                    ,                      ,                                                                     So in the implementation ITSELF you have the DECLARATION of METHODS and you have the IMPLEMENATION area of methods:)                                             2 areas working together to carry out events from the actions of ui elements like buttons
// @synthesize display;

- (IBAction)updateNow:(id)sender; 
- (IBAction)quit:(id)sender;

@end





@implementation ViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"ENTER_UPDATE"]) {
        Toolshed *hammer = [Toolshed new];
        NSMutableArray *intro = [hammer carryout:(NSString *)@"http://www2.qcc.mass.edu/facAbsence/default.asp" andseperate:(NSString *)@"/td>"
                                  with:(NSString *)@"<strong>" andwith:(NSString *)@"</strong>" andwith:(NSString *)@"<font color=#000000 size=3>" andwith:(NSString *)@"</font>"]; //OFF: @"%@default.xml" //ON:  @"http://www2.qcc.mass.edu/facAbsence/default.asp"
        NSString *defaultNatasha_IS_NO_FAC_ABS = [hammer returnaNATASHA_STR:(NSString *)@"http://www2.qcc.mass.edu/facAbsence/default.asp" with:(NSString *)@"<strong>" andwith:(NSString *)@"</strong>"];
        //hey, we're coming to you guys to pass this information
        marquee *vc2 = [segue destinationViewController];
        vc2.introARRAY = intro;
        vc2.introSTRING = defaultNatasha_IS_NO_FAC_ABS;
        
        //Now, what to do with this information?
        //first find where the files will go
        
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)updateNow:(id)sender {
    __unused NSString *titleOfButton = [sender titleForState:UIControlStateNormal];
  }

- (IBAction)quit:(id)sender {
       
    _display.text = @"";
 
   // [NSThread sleepForTimeInterval:8.0f];
    exit(0);
}

// BIG  problem, capture the correct string that can be used as proper parsed element to populate array
// Problem solved.


@end





