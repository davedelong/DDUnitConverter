//
//  DDVolumeUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDVolumeUnitConverter.h"

@implementation DDUnitConverter (DDVolumeUnitConverter)

+ (instancetype)volumeUnitConverter {
	return [[DDVolumeUnitConverter alloc] init];
}

@end


@implementation DDVolumeUnitConverter

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDVolumeUnitDryBarrels:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:115627 exponent:-6 isNegative:NO]; break;
		case DDVolumeUnitLiquidBarrels:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:158987 exponent:-6 isNegative:NO]; break;
		case DDVolumeUnitUKBushels:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:363687 exponent:-7 isNegative:NO]; break;
		case DDVolumeUnitUSBushels:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:352391 exponent:-7 isNegative:NO]; break;
		case DDVolumeUnitCentiliters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-5 isNegative:NO]; break;
		case DDVolumeUnitCoffeeSpoons:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:12322 exponent:-10 isNegative:NO]; break;
		case DDVolumeUnitCubicCentimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDVolumeUnitCubicDecimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDVolumeUnitCubicFeet:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:28316846 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitCubicInches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:16387064 exponent:-12 isNegative:NO]; break;
		case DDVolumeUnitCubicKilometers:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:9 isNegative:NO]; break;
		case DDVolumeUnitCubicMeters:
			break;
		case DDVolumeUnitCubicMiles:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:41681818255 exponent:-1 isNegative:NO]; break;
		case DDVolumeUnitCubicMillimeters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitCubicYards:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:764554858 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitCups:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:2365881994 exponent:-13 isNegative:NO]; break;
		case DDVolumeUnitDashes:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3081 exponent:-10 isNegative:NO]; break;
		case DDVolumeUnitDeciliters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-4 isNegative:NO]; break;
		case DDVolumeUnitDrachms:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:355163 exponent:-11 isNegative:NO]; break;
		case DDVolumeUnitDrams:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:369669 exponent:-11 isNegative:NO]; break;
		case DDVolumeUnitDrops:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:649 exponent:-10 isNegative:NO]; break;
		case DDVolumeUnitGallons:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:3785411784 exponent:-12 isNegative:NO]; break;
		case DDVolumeUnitUKGills:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:142065 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitUSGills:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:118294 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitLiters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-3 isNegative:NO]; break;
		case DDVolumeUnitMilliliters:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:-6 isNegative:NO]; break;
		case DDVolumeUnitUKMinims:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:591939 exponent:-13 isNegative:NO]; break;
		case DDVolumeUnitUSMinims:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:616115 exponent:-13 isNegative:NO]; break;
		case DDVolumeUnitUKFluidOunces:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:284131 exponent:-10 isNegative:NO]; break;
		case DDVolumeUnitUSFluidOunces:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:295735 exponent:-10 isNegative:NO]; break;
		case DDVolumeUnitUKPecks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:909218 exponent:-8 isNegative:NO]; break;
		case DDVolumeUnitUSPecks:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:880977 exponent:-8 isNegative:NO]; break;
		case DDVolumeUnitPinches:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:6161 exponent:-10 isNegative:NO]; break;
		case DDVolumeUnitUKPints:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:568261 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitUSDryPints:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:550610 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitUSFluidPints:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:473176 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitUKQuarts:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:11365225 exponent:-10 isNegative:NO]; break;
		case DDVolumeUnitUSDryQuarts:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:110122094272 exponent:-14 isNegative:NO]; break;
		case DDVolumeUnitUSLiquidQuarts:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:946352946 exponent:-12 isNegative:NO]; break;
		case DDVolumeUnitTablespoons:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:147867647813 exponent:-16 isNegative:NO]; break;
		case DDVolumeUnitTeaspons:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:492892159375 exponent:-17 isNegative:NO]; break;
		case DDVolumeUnitNumber2Point5Cans:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:946072 exponent:-9 isNegative:NO]; break;
		case DDVolumeUnitNumber10Cans:
            multiplier = [NSDecimalNumber decimalNumberWithMantissa:37842966 exponent:-10 isNegative:NO]; break;
        case DDVolumeUnitUKGallons:
            multiplier = [NSDecimalNumber decimalNumberWithMantissa:454609 exponent:-8 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
