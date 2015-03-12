//
// marquee.h
//  bopeep
//
//  Created by Philron Hozier on 9/2/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface marquee : UIViewController

//@property (weak, nonatomic) IBOutlet UILabel *segueDisplay;
//
//@property (weak, nonatomic) NSString *messageTextSHARED;
- (IBAction)homish:(id)sender;

//@property (strong, nonatomic) IBOutlet UITextView *segueABSDisplay2;


- (void)saySomething:(NSString *)greeting;
//- est a MUTABLE ARRAY OVER HERE

@property (strong, nonatomic) NSMutableArray *introARRAY;
@property (strong, nonatomic) NSString *introSTRING;
@property(nonatomic, strong) NSString *str;
//@property (strong, nonatomic) IBOutlet UITextView *segueABSDisplay3;
@property (strong, nonatomic) IBOutlet UITextView *segueABSDisplay2;

@end
