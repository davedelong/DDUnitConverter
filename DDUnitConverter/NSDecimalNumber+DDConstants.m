//
//  NSDecimalNumber+DDConstants.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "NSDecimalNumber+DDConstants.h"


@implementation NSDecimalNumber (DDConstants)

+ (NSDecimalNumber *) piConstant_dd {
	return [NSDecimalNumber decimalNumberWithString:@"3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"];
}

+ (NSDecimalNumber *) eConstant_dd {
	return [NSDecimalNumber decimalNumberWithString:@"2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274"];
}

+ (NSDecimalNumber *) phiConstant_dd {
	return [NSDecimalNumber decimalNumberWithString:@"1.6180339887498948482045868343656381177203091798057628621354486227052604628189024497072072041893911374"];
}

+ (NSDecimalNumber *) cConstant_dd {
	return [NSDecimalNumber decimalNumberWithMantissa:299792458 exponent:0 isNegative:NO];
}

+ (NSDecimalNumber *) electronChargeConstant_dd {
	return [NSDecimalNumber decimalNumberWithMantissa:1.60217648740 exponent:-19 isNegative:NO];
}

+ (NSDecimalNumber *) gConstant_dd {
	return [NSDecimalNumber decimalNumberWithMantissa:980665 exponent:-5 isNegative:NO];
}

@end
