//
//  MyTest.m
//  E-Tipitaka
//
//  Created by Sutee Sudprasert on 9/9/54 BE.
//  Copyright 2554 __MyCompanyName__. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "ContentViewController.h"

@interface MyTest : GHTestCase { }
@end

@implementation MyTest

//- (void)testStrings {       
//    NSString *string1 = @"a string";
//    GHTestLog(@"I can log to the GHUnit test console: %@", string1);
//    
//    // Assert string1 is not NULL, with no custom error description
//    GHAssertNotNULL(string1, nil);
//    
//    // Assert equal objects, add custom error description
//    NSString *string2 = @"a string";
//    GHAssertEqualObjects(string1, string2, @"A custom error message. string1 should be equal to: %@.", string2);
//}

- (void)testConvertWhiteSpacesToHTML {
    ContentViewController *contentViewController = [[ContentViewController alloc] init];
    
    NSString *text = @"\tทดสอบ\n\n";
    NSString *html = [contentViewController convertWhiteSpacesToHTML:text];
    
    GHAssertEqualStrings(@"&nbsp;&nbsp;ทดสอบ<br><br>", html, @"the output should be equal to: @", html);
    
    [contentViewController release];
}

@end
