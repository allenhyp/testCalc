//
//  Core.h
//  testCalc
//
//  Created by Yuan-Pu Hsu on 12/30/15.
//  Copyright © 2015 Yuan-Pu Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Core : NSObject

- (NSString *) addNumber:(NSString*)numberA andString:(NSString*)numberB;

- (NSString *) calculate:(NSString*)numberA andString:(NSString*)numberB andInt:(NSInteger)typeOfOperation;

+ (NSString *) cleanTheZeroes:(NSString*)rawResult;

@end
