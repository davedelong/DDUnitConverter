//
//  DDMassUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDMassUnitConverter.h"

@implementation DDUnitConverter (DDMassUnitConverter)

+ (instancetype)massUnitConverter {
	return [[DDMassUnitConverter alloc] init];
}

@end


@implementation DDMassUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDMassUnitAtomicMassUnits:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16605 exponent:-31 isNegative:NO]; break;
		case DDMassUnitDrachms:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:388793 exponent:-8 isNegative:NO]; break;
		case DDMassUnitDrams:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:177185 exponent:-8 isNegative:NO]; break;
		case DDMassUnitGrains:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:6479891 exponent:-11 isNegative:NO]; break;
		case DDMassUnitGrams:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDMassUnitHundredWeights:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:508023 exponent:-4 isNegative:NO]; break;
		case DDMassUnitKilograms:
			break;
		case DDMassUnitMilligrams:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDMassUnitTroyOunces:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:311035 exponent:-7 isNegative:NO]; break;
		case DDMassUnitUSOunces:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:283495 exponent:-7 isNegative:NO]; break;
		case DDMassUnitPennyweights:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:155517 exponent:-8 isNegative:NO]; break;
		case DDMassUnitTroyPounds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:373242 exponent:-6 isNegative:NO]; break;
		case DDMassUnitUSPounds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:45359237 exponent:-8 isNegative:NO]; break;
		case DDMassUnitQuarters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:127006 exponent:-4 isNegative:NO]; break;
		case DDMassUnitScruples:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:129598 exponent:-8 isNegative:NO]; break;
		case DDMassUnitShortHundredWeights:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:453592 exponent:-4 isNegative:NO]; break;
		case DDMassUnitShortTons:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:907185 exponent:-7 isNegative:NO]; break;
		case DDMassUnitSlugs:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:145939 exponent:-4 isNegative:NO]; break;
		case DDMassUnitStones:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:635029 exponent:-5 isNegative:NO]; break;
		case DDMassUnitUKTons:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1016047 exponent:-3 isNegative:NO]; break;
		case DDMassUnitTonnes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:3 isNegative:NO]; break;
		case DDMassUnitFirkins:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:408233133 exponent:-7 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
