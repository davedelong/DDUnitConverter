//
//  DDIlluminationUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "DDIlluminationUnitConverter.h"

@implementation DDUnitConverter (DDIlluminationUnitConverter)

+ (id) illuminationUnitConverter {
	return [[[DDIlluminationUnitConverter alloc] init] autorelease];
}

@end


@implementation DDIlluminationUnitConverter

+ (NSDecimalNumber *) multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber * multiplier = [NSDecimalNumber one];
	switch (unit) {
		case DDIlluminationUnitFootCandles:
		case DDIlluminationUnitLumensPerSquareFoot:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:107639104167097 exponent:-13 isNegative:NO]; break;
		case DDIlluminationUnitLumensPerSquareCentimeter:
		case DDIlluminationUnitNox:
		case DDIlluminationUnitPhots:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:4 isNegative:NO]; break;
		case DDIlluminationUnitLumensPerSquareMeter:
			break;
		case DDIlluminationClearDaySunIllumination:
			multiplier = [NSDecimalNumber decimalNumberWithMantissa:1 exponent:5 isNegative:NO]; break;
		default:
			break;
	}
	return multiplier;
}

@end
