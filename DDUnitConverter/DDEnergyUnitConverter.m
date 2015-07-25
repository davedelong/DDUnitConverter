//
//  DDEnergyUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDEnergyUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDEnergyUnitConverter)

+ (instancetype)energyUnitConverter {
	return [[DDEnergyUnitConverter alloc] init];
}

@end


@implementation DDEnergyUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDEnergyUnitBTUs:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:105506 exponent:-2 isNegative:NO]; break;
		case DDEnergyUnitCalories:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:41868 exponent:-4 isNegative:NO]; break;
		case DDEnergyUnitElectronVolts:
			multiplier = [NSDecimalNumber electronChargeConstant_dd]; break;
		case DDEnergyUnitErgs:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-7 isNegative:NO]; break;
		case DDEnergyUnitFootPoundForces:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:135582 exponent:-5 isNegative:NO]; break;
		case DDEnergyUnitJoules:
			break;
		case DDEnergyUnitKilogramForceMeters:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
		case DDEnergyUnitKilowattHours:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3600000 exponent:0 isNegative:NO]; break;
		case DDEnergyUnitNewtonMeters:
			break;
		case DDEnergyUnitTherms:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:105506000 exponent:0 isNegative:NO]; break;
		case DDEnergyUnitWattHours:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3600 exponent:0 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
