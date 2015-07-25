//
//  DDTimeUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDTimeUnitConverter.h"

@implementation DDUnitConverter (DDTimeUnitConverter)

+ (instancetype)timeUnitConverter {
	return [[DDTimeUnitConverter alloc] init];
}

@end


@implementation DDTimeUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDTimeUnitBlinks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:864 exponent:-3 isNegative:NO]; break;
		case DDTimeUnitCenturies:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:0 isNegative:NO]; break;
		case DDTimeUnitCesium133:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1087827757078 exponent:-22 isNegative:NO]; break;
		case DDTimeUnitDays:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:86400 exponent:0 isNegative:NO]; break;
		case DDTimeUnitDecades:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:-1 isNegative:NO]; break;
		case DDTimeUnitFortnights:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1209600 exponent:0 isNegative:NO]; break;
		case DDTimeUnitHours:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3600 exponent:0 isNegative:NO]; break;
		case DDTimeUnitMicroseconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDTimeUnitMillenia:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:1 isNegative:NO]; break;
		case DDTimeUnitMilliseconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDTimeUnitMinutes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:60 exponent:0 isNegative:NO]; break;
		case DDTimeUnitMonths:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:2548979939168 exponent:-6 isNegative:NO]; break;
		case DDTimeUnitNanoseconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-9 isNegative:NO]; break;
		case DDTimeUnitSeconds:
			break;
		case DDTimeUnitTicks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16666666666666 exponent:-15 isNegative:NO]; break;
		case DDTimeUnitWeeks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:604800 exponent:0 isNegative:NO]; break;
		case DDTimeUnitYears:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3155692551 exponent:-2 isNegative:NO]; break;
		case DDTimeUnitLunarYears:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3058775927002 exponent:-5 isNegative:NO]; break;
		case DDTimeUnitSiderealSeconds:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:997269476174 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealMinutes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:59836168570454 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealHours:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3590170114227246 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealDays:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:86164082741453904 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealWeeks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:603148579190177328 exponent:-12 isNegative:NO]; break;
		case DDTimeUnitSiderealYears:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3147075857303 exponent:-5 isNegative:NO]; break;
		case DDTimeUnitMicrofortnights:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:12096 exponent:-4 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
