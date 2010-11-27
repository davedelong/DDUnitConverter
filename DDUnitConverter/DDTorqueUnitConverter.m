//
//  DDTorqueUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "DDTorqueUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDTorqueUnitConverter)

+ (id) torqueUnitConverter {
	return [[[DDTorqueUnitConverter alloc] init] autorelease];
}

@end


@implementation DDTorqueUnitConverter

+ (NSDecimalNumber *) multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber * multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDForceUnitDyneCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-7 isNegative:NO]; break;
		case DDForceUnitGramForceCentimeters:
			multiplier = [[NSDecimalNumber gConstant_dd] decimalNumberByMultiplyingByPowerOf10:-5]; break;
		case DDForceUnitKilogramForceCentimeters:
			multiplier = [[NSDecimalNumber gConstant_dd] decimalNumberByMultiplyingByPowerOf10:-2]; break;
		case DDForceUnitKilogramForceMeters:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
		case DDForceUnitNewtonCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDForceUnitNewtonMeters:
			break;
		case DDForceUnitOunceForceInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:7061551540454 exponent:-15 isNegative:NO]; break;
		case DDForceUnitPoundalFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:4214011 exponent:-8 isNegative:NO]; break;
		case DDForceUnitPoundForceFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:135581795 exponent:-8 isNegative:NO]; break;
		case DDForceUnitPoundForceInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:112984824647273 exponent:-15 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
