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

- (NSNumber *)convertNumber:(NSNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to {
	if (from == to) { return number; }
	
	NSDecimalNumber * source = [NSDecimalNumber decimalNumberWithDecimal:[number decimalValue]];
	
	NSDecimalNumber * convertToMeters = [[self class] multiplierForUnit:from];
	NSDecimalNumber * valueInMeters = [source decimalNumberByMultiplyingBy:convertToMeters];
	
	NSDecimalNumber * convertFromMeters = [[self class] multiplierForUnit:to];
	NSDecimalNumber * valueInTarget = [valueInMeters decimalNumberByDividingBy:convertFromMeters];
	
	return valueInTarget;
}

@end
