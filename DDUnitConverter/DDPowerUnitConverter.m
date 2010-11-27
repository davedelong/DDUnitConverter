//
//  DDPowerUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "DDPowerUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDPowerUnitConverter)

+ (id) powerUnitConverter {
	return [[[DDPowerUnitConverter alloc] init] autorelease];
}

@end


@implementation DDPowerUnitConverter

+ (NSDecimalNumber *) multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber * multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDPowerUnitFootPoundForcesPerSecond:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:135582 exponent:-5 isNegative:NO]; break;
		case DDPowerUnitHorsepower:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:7457 exponent:-1 isNegative:NO]; break;
		case DDPowerUnitMetricHorsepower:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:735499 exponent:-3 isNegative:NO]; break;
		case DDPowerUnitJoulesPerSecond:
		case DDPowerUnitWatts:
			break;
		case DDPowerUnitKilogramForceMetersPerSecond:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
		default:
			break;
	}
	return multiplier;
}

@end
