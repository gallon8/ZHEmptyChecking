//
//  NSString+ZHEmptyChecking.m
//  智慧社区
//
//  Created by gallon on 2019/9/4.
//  Copyright © 2017年 zhsq. All rights reserved.
//

#import "NSString+ZHEmptyChecking.h"

@implementation NSString (ZHEmptyChecking)

- (BOOL)js_isEmptyString
{
    if ([[self stringByReplacingOccurrencesOfString:@" " withString:@""] isEqualToString:@""]) {
        return YES;
    }else {
        return NO;
    }
}

@end
