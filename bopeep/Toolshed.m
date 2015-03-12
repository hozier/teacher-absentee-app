//
//  Toolshed.m
//  bopeep
//
//  Created by Philron Hozier on 11/26/13.
//  Copyright (c) 2013 milieu. All rights reserved.
//

#import "Toolshed.h"
#import "URLStreams.h"


@implementation Toolshed

@synthesize scanString, masterlock, Natasha, Nicky, formattedDateString;//, segueABSDisplay3;//, greeting;

+ (NSString *)scanString:(NSString *)string
                startTag:(NSString *)startTag
                  endTag:(NSString *)endTag {
    NSString* scanString = @"";
    
    if (string.length > 0) {
        
        NSScanner* scanner = [[NSScanner alloc] initWithString:string];
        
        @try {
            [scanner scanUpToString:startTag intoString:nil];
            scanner.scanLocation += [startTag length]; // start scanning from BEYOND this point TO:
            [scanner scanUpToString:endTag intoString:&scanString];
            
        }
        @catch (NSException *exception) {
            return nil;
        }
        @finally {
            
            
            return scanString;
            
        }
        
    }
    
    return scanString;
    
}

-(NSMutableArray *) bookkeeper:(NSMutableArray *)jelly
                        add_to:(NSMutableArray *)bean{ //an array of arrays
    
    NSString *str, *prestr, *ed_str;
    
    masterlock = [[NSMutableArray alloc] init];
    
    
    NSLog(@"masterlock: %@", [masterlock description]);
    
    
    for (int u = 0; u <[jelly count]; u++){
        if ([[jelly objectAtIndex:u]length ]> 0){
            prestr = [@"\n❝" stringByAppendingFormat:@"%@❞\n", [bean objectAtIndex:u]];
            if ([[bean objectAtIndex:u]length ]> 0){
                ed_str = [[jelly objectAtIndex:u] stringByAppendingFormat:@"%@", prestr]; // w new line character
                //[ed_str setFont:[UIFont fontWithName:@"American Typewriter" size:18]];
                str = [@"\n" stringByAppendingString:ed_str];
            }
            else{
                str = [jelly objectAtIndex:u];
            }
            [masterlock addObject:str];
        }
    }
    //  if ([ [jelly objectAtIndex:u]length ] > 0  && [ [bean objectAtIndex:u]length ] > 0){
    
    return masterlock;
    
    
}

-(NSMutableArray *) carryout:(NSString *)source andseperate:(NSString *)tag with:(NSString *)start1 andwith:(NSString *)end1
                     andwith:(NSString *)start2 andwith:(NSString *)end2{ // BEAST ! ! ! ! ! ! ! 11/2013.
    
    // ? Creatin objects of CLASS
    URLStreams *urlIntake = [URLStreams new];
    NSString *import = [urlIntake NSSHURL_ON:source];
    //NSString *import = [self NSSHURL_ON:@"%@default2.xml"];
    
    
    
    Toolshed *wrench = [ Toolshed new];
    //
    // Have your object call the method that sits inside it ! ! ! ! !
    
    NSArray *splitty = [import componentsSeparatedByString:tag];
    NSLog(@"%@", [splitty description]);
    NSMutableArray *NataashaArr = [[NSMutableArray alloc] init];
    NSMutableArray *NickyArr = [[NSMutableArray alloc] init];
    NSString *myNatashaLINEthatsbeensplit;
    
    
    
    for (int u = 0; u <[splitty count]; u++){
        myNatashaLINEthatsbeensplit = [splitty objectAtIndex:u];
        
         Natasha = [Toolshed scanString:myNatashaLINEthatsbeensplit
                                        startTag:(NSString *)start1
                                          endTag:(NSString *)end1];
        [NataashaArr addObject:Natasha];
        
        
        
         Nicky = [Toolshed scanString:myNatashaLINEthatsbeensplit
                                      startTag:(NSString *)start2
                                        endTag:(NSString *)end2];
        [NickyArr addObject:Nicky];
        
        
    } //END.
    
    
    
    //NSMutableArray *
    masterlock = [wrench bookkeeper:(NSMutableArray *)NataashaArr add_to:(NSMutableArray *)NickyArr];
    //[self bookkeeper:NickyArr];
    NSLog(@"%@", [NataashaArr description]); NSLog(@"%@", [NickyArr description]);
    NSLog(@"%@", [masterlock description]);return masterlock;
}


-(NSString *) returnaNATASHA_STR:(NSString *)source with:(NSString *)start1 andwith:(NSString *)end1{
    //review below code
    
    // ? Creatin objects of CLASS
    URLStreams *urlIntake = [URLStreams new];
    NSString *import = [urlIntake NSSHURL_ON:source];
    
    Natasha = [Toolshed scanString:import
                                    startTag:(NSString *)start1
                                      endTag:(NSString *)end1];
    
    return Natasha;
}


-(NSString *)setCurrDate{
    __unused NSMutableArray *days = [[NSMutableArray alloc] init];
    NSCalendar *cal = [NSCalendar autoupdatingCurrentCalendar];
    NSDateComponents *tempCop = [cal components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit
                                       fromDate:[NSDate date]];
    NSDate *today = [cal dateFromComponents:tempCop];
    /***************    needed up to here    ******************/
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterFullStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    //NSDate *date = [NSDate dateWithTimeIntervalSinceReferenceDate:162000];
    
     formattedDateString = [dateFormatter stringFromDate:today];
    //REPLACE today with DATE.^^^^^^^^^^^^^^
    /***************    end of date code   ******************/
    return formattedDateString;
    
}

//- (void )saySomething:(NSString *)greeting {
//    
//    //    if ([greeting rangeOfString:@"❝"].location != NSNotFound) {
//    //        [segueABSDisplay2 setFont:[UIFont fontWithName:@"American Typewriter" size:15.25]];
//    //        segueABSDisplay2.text= greeting;
//    //    }
//    
//    [segueABSDisplay3 setFont:[UIFont fontWithName:@"American Typewriter" size:15.25]];
//    segueABSDisplay3.text= greeting;
//    
//}



@end
