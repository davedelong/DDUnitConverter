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
	NSDecimalNumber *valueInBaseUnit = [source decimalNumberByMultiplyingBy:convertToBaseUnit];
	
	NSDecimalNumber *convertFromBaseUnit = [[self class] multiplierForUnit:toUnit];
    if ([convertFromBaseUnit isEqual:[NSDecimalNumber zero]]) {
        convertFromBaseUnit = [NSDecimalNumber one];
    }
	NSDecimalNumber *valueInTargetUnit = [valueInBaseUnit decimalNumberByDividingBy:convertFromBaseUnit];
	
	return valueInTargetUnit;
}

@end
