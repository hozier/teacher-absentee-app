//
//  ViewController.h
//  bopeep
//
//  Created by Philron Hozier on 8/31/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import <UIKit/UIKit.h>

//                                       _
// THE SCENE THAT YOU SEE ON THE CANVAS |_|is named bo peep View Controller *
// because it is managed by the bopeepViewController object. 
//

// model objects represent data
//
// view objects know how to display the data:
// responsible for managing one scene
//
//

// CLAS INTERFACE

@interface ViewController : UIViewController


@property (nonatomic, strong) IBOutlet UILabel *display;

- (IBAction)updateNow:(id)sender;
+ (NSString *)scanString:(NSString *)string
                startTag:(NSString *)startTag
                  endTag:(NSString *)endTag;







//@property (nonatomic, retain)
//@property (nonatomic, retain)
//@property (nonatomic, retain)
//@property (nonatomic, retain)
//@property (nonatomic, retain)
//@property (nonatomic, retain)
//@property (nonatomic, retain)
//@property (strong, nonatomic) NSString *messageTextSHARED;

@end
