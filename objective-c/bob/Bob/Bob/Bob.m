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
    if ([Bob heardNothing:input]) {
        return @"Fine, be that way.";
    }
    if ([Bob heardRage:input]) {
        return @"Woah, chill out!";
    }
    if ([Bob hasAnswerForQuestion:input]) {
        return @"Sure.";
    }
    return @"Whatever.";
}

+ (BOOL)heardNothing:(NSString *)input
{
    return ([input length] == 0 || [[input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] == 0);
}

+ (BOOL)heardRage:(NSString *)input
{
    return ([[input uppercaseString] isEqualToString:input] && ![[input lowercaseString] isEqualToString:input]);
}

+ (BOOL)hasAnswerForQuestion:(NSString *)input
{
    return [[input substringFromIndex:[input length] - 1] isEqualToString:@"?"];
}

@end
