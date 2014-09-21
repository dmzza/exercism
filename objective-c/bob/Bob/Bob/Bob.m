//
//  Bob.m
//  Bob
//
//  Created by David Mazza on 9/21/14.
//  Copyright (c) 2014 Peaking. All rights reserved.
//

#import "Bob.h"

@implementation Bob

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (NSString *)hey:(NSString *)input
{
    if ([input length] == 0) {
        return @"Fine, be that way.";
    }
    
    NSString *response;
    
    if ([[input uppercaseString] isEqualToString:input] && ![[input lowercaseString] isEqualToString:input]) {
        response = @"Woah, chill out!";
    } else if ([[input substringFromIndex:[input length] - 1] isEqualToString:@"?"]) {
        response = @"Sure.";
    } else if ([[input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0) {
        response = @"Fine, be that way.";
    } else {
        response = @"Whatever.";
    }
    
    return response;
}

@end
