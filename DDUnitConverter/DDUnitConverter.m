//
//  DDUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDUnitConverter.h"


@implementation DDUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	[NSException raise:NSInvalidArgumentException format:@"%@ must be overridden", NSStringFromSelector(_cmd)];
	return nil;
}

- (NSNumber *)convertNumber:(NSNumber *)number fromUnit:(DDUnit)fromUnit toUnit:(DDUnit)toUnit {
    if (fromUnit == toUnit) { return number; }
    
    //make sure it's an NSDecimalNumber
    NSDecimalNumber *source = [NSDecimalNumber decimalNumberWithDecimal:[number decimalValue]];
    
    NSDecimalNumber *convertToBaseUnit = [[self class] multiplierForUnit:fromUnit];
    
    NSDecimalNumber * n1 = [NSDecimalNumber decimalNumberWithString:[source stringValue]];
    NSDecimalNumber * n2 = [NSDecimalNumber decimalNumberWithString:[convertToBaseUnit stringValue]];
    
    NSDecimalNumber *valueInBaseUnit = [n1 decimalNumberByMultiplyingBy:n2];
    
    NSDecimalNumber *convertFromBaseUnit = [[self class] multiplierForUnit:toUnit];
    if ([convertFromBaseUnit isEqual:[NSDecimalNumber zero]]) {
        convertFromBaseUnit = [NSDecimalNumber one];
    }
    NSDecimalNumber * n3 = [NSDecimalNumber decimalNumberWithString:[valueInBaseUnit stringValue]];
    NSDecimalNumber * n4 = [NSDecimalNumber decimalNumberWithString:[convertFromBaseUnit stringValue]];
    
    NSDecimalNumber *valueInTargetUnit = [n3 decimalNumberByDividingBy:n4];
    
    return valueInTargetUnit;
}

@end
