//
//  DDAreaUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDAreaUnitConverter.h"

@implementation DDUnitConverter (DDAreaUnitConverter)

+ (instancetype)areaUnitConverter {
	return [[DDAreaUnitConverter alloc] init];
}

@end


@implementation DDAreaUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDAreaUnitAcres:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:40468564224 exponent:-7 isNegative:NO]; break;
		case DDAreaUnitBarns:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-28 isNegative:NO]; break;
		case DDAreaUnitHectares:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:10000 exponent:0 isNegative:NO]; break;
		case DDAreaUnitRoods:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:101171 exponent:-2 isNegative:NO]; break;
		case DDAreaUnitSquareCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-4 isNegative:NO]; break;
		case DDAreaUnitSquareDecimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-2 isNegative:NO]; break;
		case DDAreaUnitSquareFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:9290304 exponent:-8 isNegative:NO]; break;
		case DDAreaUnitSquareInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:64516 exponent:-8 isNegative:NO]; break;
		case DDAreaUnitSquareKilometers:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:6 isNegative:NO]; break;
		case DDAreaUnitSquareMeters:
			break;
		case DDAreaUnitSquareMiles:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:258998811 exponent:-2 isNegative:NO]; break;
		case DDAreaUnitSquareMillimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDAreaUntiSquareRods:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:25292953811512 exponent:-12 isNegative:NO]; break;
		case DDAreaUnitSquareYards:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:83612736 exponent:-8 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
