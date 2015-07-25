//
//  DDInductanceUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDInductanceUnitConverter.h"

@implementation DDUnitConverter (DDInductanceUnitConverter)

+ (instancetype)inductanceUnitConverter {
	return [[DDInductanceUnitConverter alloc] init];
}

@end


@implementation DDInductanceUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDInductanceUnitElectromagneticUnits:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-9 isNegative:NO]; break;
		case DDInductanceUnitElectrostaticUnits:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:898755 exponent:-6 isNegative:NO]; break;
		case DDInductanceUnitHenrys:
			break;
		case DDInductanceUnitMillihenrys:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDInductanceUnitMicrohenrys:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
