//
//  WebView.h
//  bopeep
//
//  Created by Philron Hozier on 11/11/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface Web : UIViewController

@property (retain, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIWebView *webby;

@end

