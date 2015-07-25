//
//  DDPowerUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDPowerUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDPowerUnitConverter)

+ (instancetype)powerUnitConverter {
	return [[DDPowerUnitConverter alloc] init];
}

@end


@implementation DDPowerUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
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
        case DDPowerUnitKilowatts:
            multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
