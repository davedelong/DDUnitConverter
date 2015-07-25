//
//  DDAccelerationUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDAccelerationUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDAccelerationUnitConverter)

+ (instancetype)accelerationUnitConverter {
	return [[DDAccelerationUnitConverter alloc] init];
}

@end


@implementation DDAccelerationUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDAccelerationUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDAccelerationUnitFeetPerSecondsSquared:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3048 exponent:-4 isNegative:NO]; break;
		case DDAccelerationUnitGalileos:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDAccelerationUnitGForces:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
		case DDAccelerationUnitKilometersPerSecondsSquared:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDAccelerationUnitMetersPerSecondsSquared:
			break;
		case DDAccelerationUnitMilesPerSecondsSquared:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1609344 exponent:-3 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
