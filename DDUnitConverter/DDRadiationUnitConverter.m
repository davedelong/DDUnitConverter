//
//  DDRadiationUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDRadiationUnitConverter.h"

@implementation DDUnitConverter (DDRadiationUnitConverter)

+ (instancetype)radiationUnitConverter {
	return [[DDRadiationUnitConverter alloc] init];
}

@end


@implementation DDRadiationUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDRadiationUnitBecquerels:
			break;
		case DDRadiationUnitCuries:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:37 exponent:9 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
