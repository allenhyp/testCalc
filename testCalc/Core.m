//
//  Core.m
//  testCalc
//
//  Created by Yuan-Pu Hsu on 12/30/15.
//  Copyright © 2015 Yuan-Pu Hsu. All rights reserved.
//

#import "Core.h"

@implementation Core

- (NSString *) addNumber:(NSString *)numberA andString:(NSString *)numberB{
    
    if ([numberB isEqualToString:@"."]) {
        if (![numberA containsString:@"."]) {
            return [numberA stringByAppendingString:numberB];
        }
        return numberA;
    }
    if ([numberA  isEqualToString: @"0"]) {
        return numberB;
    }
    else {
        return [numberA stringByAppendingString:numberB];
    }
}

- (NSString *) calculate:(NSString *)numberA andString:(NSString *)numberB andInt:(NSInteger)typeOfOperation{
    
    double operator1 = [numberA doubleValue];
    double operator2 = [numberB doubleValue];
    NSString* result = @"";
    
    // Do the operation first.
    switch (typeOfOperation) {
        case 0:
            result = [NSString stringWithFormat:@"%f", (operator1 + operator2)];
            break;
        case 1:
            result = [NSString stringWithFormat:@"%f", (operator1 - operator2)];
            break;
        case 2:
            result = [NSString stringWithFormat:@"%f", (operator1 * operator2)];
            break;
        case 3:
            result = [NSString stringWithFormat:@"%f", (operator1 / operator2)];
            break;
            
        default:
            break;
    }
    
    return [Core cleanTheZeroes:result];
    
    
    }

+(NSString *) cleanTheZeroes:(NSString *)rawResult{
    
    // Clean up the 0s at the rear of the string.
    unsigned long index = rawResult.length-1;
    
    for (; [rawResult characterAtIndex:index] != '.'; index--) {
        if ([rawResult characterAtIndex:index] == '0') {
            rawResult = [rawResult substringToIndex:index];
        }
        else {
            return rawResult;
        }
    }
    return [rawResult substringToIndex:index];
}
@end
