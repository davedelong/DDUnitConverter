//
//  DDTemperatureUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import "DDTemperatureUnitConverter.h"

@implementation DDUnitConverter (DDTemperatureUnitConverter)

+ (instancetype)temperatureUnitConverter {
	return [[DDTemperatureUnitConverter alloc] init];
}

@end


@implementation DDTemperatureUnitConverter

- (NSNumber *) convertNumber:(NSNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to {
	if (from == to) { return number; }
	
	NSDecimalNumber *original = [NSDecimalNumber decimalNumberWithDecimal:[number decimalValue]];
	NSDecimalNumber *numberInCelcius = original;
	
	NSDecimalNumber *fiveNinths = [NSDecimalNumber decimalNumberWithMantissa:555555555555 exponent:-12 isNegative:NO];
	NSDecimalNumber *nineFifths = [NSDecimalNumber decimalNumberWithMantissa:18 exponent:-1 isNegative:NO];
	
	switch (from) {
		case DDTemperatureUnitFarenheit:
			numberInCelcius = [numberInCelcius decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithMantissa:32 exponent:0 isNegative:NO]];
			numberInCelcius = [numberInCelcius decimalNumberByMultiplyingBy:fiveNinths];
			break;
		case DDTemperatureUnitKelvin:
			numberInCelcius = [numberInCelcius decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithMantissa:27315 exponent:-2 isNegative:NO]];
			break;
		case DDTemperatureUnitReaumur:
			numberInCelcius = [numberInCelcius decimalNumberByDividingBy:[NSDecimalNumber decimalNumberWithMantissa:8 exponent:-1 isNegative:NO]];
			break;
		case DDTemperatureUnitRankine:
			numberInCelcius = [numberInCelcius decimalNumberBySubtracting:[NSDecimalNumber decimalNumberWithMantissa:49167 exponent:-2 isNegative:NO]];
			numberInCelcius = [numberInCelcius decimalNumberByMultiplyingBy:fiveNinths];
		default:
			break;
	}
	
	NSDecimalNumber *numberInTarget = numberInCelcius;
	switch (to) {
		case DDTemperatureUnitFarenheit:
			numberInTarget = [numberInTarget decimalNumberByMultiplyingBy:nineFifths];
			numberInTarget = [numberInTarget decimalNumberByAdding:[NSDecimalNumber decimalNumberWithMantissa:32 exponent:0 isNegative:NO]];
			break;
		case DDTemperatureUnitKelvin:
			numberInTarget = [numberInTarget decimalNumberByAdding:[NSDecimalNumber decimalNumberWithMantissa:27315 exponent:-2 isNegative:NO]];
			break;
		case DDTemperatureUnitReaumur:
			numberInTarget = [numberInTarget decimalNumberByMultiplyingBy:[NSDecimalNumber decimalNumberWithMantissa:8 exponent:-1 isNegative:NO]];
			break;
		case DDTemperatureUnitRankine:
			numberInTarget = [numberInTarget decimalNumberByMultiplyingBy:nineFifths];
			numberInTarget = [numberInTarget decimalNumberByAdding:[NSDecimalNumber decimalNumberWithMantissa:49167 exponent:-2 isNegative:NO]];
			break;
		default:
			break;
	}
	
	return numberInTarget;
}

@end
