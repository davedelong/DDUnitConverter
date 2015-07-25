//
//  DDCurrentUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDCurrentUnitConverter.h"

@implementation DDUnitConverter (DDCurrentUnitConverter)

+ (instancetype)currentUnitConverter {
	return [[DDCurrentUnitConverter alloc] init];
}

@end


@implementation DDCurrentUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDCurrentUnitAmperes:
			break;
		case DDCurrentUnitElectromagneticUnits:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:1 isNegative:NO]; break;
		case DDCurrentUnitMilliamperes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
