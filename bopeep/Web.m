//
//  WebView.m
//  bopeep
//
//  Created by Philron Hozier on 11/11/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import "Web.h"
#import "ViewController.h"
#import "marquee.h"

@interface Web ()

@end

@implementation Web
@synthesize label, webby;

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
    [self showWebURL];
    // [self showString];
    // [self showFile];
}
- (void)showWebURL
{
    NSURL *url = [[NSURL alloc] initWithString:@"http://m.techrepublic.com/blog/ios-app-builder"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webby loadRequest:request];
}
- (void)showString
{
    NSString *htmlString = @"<html><body>";
    htmlString = [htmlString stringByAppendingString:@"Hello App Builders! <br /> <br />"];
    htmlString = [htmlString stringByAppendingString:@"All <strong>string</strong> things are possible in a UIWebView"];
    htmlString = [htmlString stringByAppendingString:@"</body></html>"];
    // UIWebView uses baseURL to find style sheets, images, etc that you include in your HTML.
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    [self.webby loadHTMLString:htmlString baseURL:bundleUrl];
}
- (void)showFile
{
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"mypage" ofType:@"html"] isDirectory:NO];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webby loadRequest:request];
}
- (IBAction)backButtonTapped:(id)sender
{
    [self.webby goBack];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
