//
//  DDUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "DDUnitConverter.h"


@implementation DDUnitConverter

+ (NSDecimalNumber *) multiplierForUnit:(DDUnit)unit {
	[NSException raise:NSInvalidArgumentException format:@"%@ must be overridden", NSStringFromSelector(_cmd)];
	return nil;
}

- (NSDecimalNumber *)convertNumber:(NSDecimalNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to {
	if (from == to) { return number; }
	
	NSDecimalNumber * convertToBaseUnit = [[self class] multiplierForUnit:from];
	NSDecimalNumber * valueInBaseUnit = [number decimalNumberByMultiplyingBy:convertToBaseUnit];
	
	NSDecimalNumber * convertFromBaseUnit = [[self class] multiplierForUnit:to];
    if ([convertFromBaseUnit isEqual:[NSDecimalNumber zero]]) {
        convertFromBaseUnit = [NSDecimalNumber one];
    }
	NSDecimalNumber * valueInTargetUnit = [valueInBaseUnit decimalNumberByDividingBy:convertFromBaseUnit];
	
	return valueInTargetUnit;
}

@end
