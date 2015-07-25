//
//  DDForceUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDForceUnitConverter.h"
#import "NSDecimalNumber+DDConstants.h"

@implementation DDUnitConverter (DDForceUnitConverter)

+ (instancetype)forceUnitConverter {
	return [[DDForceUnitConverter alloc] init];
}

@end


@implementation DDForceUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDForceUnitDynes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-5 isNegative:NO]; break;
		case DDForceUnitKilogramForces:
			multiplier = [NSDecimalNumber gConstant_dd]; break;
		case DDForceUnitNewtons:
			break;
		case DDForceUnitPoundals:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:138255 exponent:-6 isNegative:NO]; break;
		case DDForceUnitPoundForces:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:44822 exponent:-4 isNegative:NO]; break;
		case DDForceUnitSthenes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
