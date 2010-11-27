//
//  DDCurrencyUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "DDCurrencyUnitConverter.h"

static double _DDCurrencyExchangeRates[DDCurrencyUnitSDR];

static BOOL _ratesUpdated = NO;
static NSLock * updatingLock = nil;

@implementation DDUnitConverter (DDCurrencyUnitConverter)

+ (id) currencyUnitConverter {
	return [[[DDCurrencyUnitConverter alloc] init] autorelease];
}

@end


@implementation DDCurrencyUnitConverter

+ (void) initialize {
	if (self == [DDCurrencyUnitConverter class]) {
		updatingLock = [[NSLock alloc] init];
	}
}

+ (NSDecimalNumber *) multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber * multiplier = [NSDecimalNumber one];
	if (unit < DDCurrencyUnitSDR) {
		NSNumber * exchangeRate = [NSNumber numberWithDouble:_DDCurrencyExchangeRates[unit]];
		multiplier = [NSDecimalNumber decimalNumberWithDecimal:[exchangeRate decimalValue]];
	}
	return multiplier;
}

- (id) init {
	self = [super init];
	if (self) {
		[self refreshExchangeRates];
	}
	return self;
}

- (NSNumber *) convertNumber:(NSNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to {
	[updatingLock lock];
	[updatingLock unlock];
	
	return [super convertNumber:number fromUnit:from toUnit:to];
}

- (void) refreshExchangeRates {
	[self performSelectorInBackground:@selector(refreshExchangeRatesInBackground) withObject:nil];
}

- (void) refreshExchangeRatesInBackground {
	if ([NSThread currentThread] == [NSThread mainThread]) { return; }
	[updatingLock lock];
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSURL * imfURL = [NSURL URLWithString:@"http://www.imf.org/external/np/fin/data/rms_five.aspx?tsvflag=Y"];
	NSError * error = nil;
	NSString * raw = [NSString stringWithContentsOfURL:imfURL encoding:NSUTF8StringEncoding error:&error];
	
	if (error == nil) {
		NSArray * rows = [raw componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
		BOOL hasStartedCulling = NO;
		short rowIndex = 0;
		for (NSString * row in rows) {
			if ([row length] == 0) { continue; }
			if (hasStartedCulling == NO) {
				if ([row hasPrefix:@"Currency"]) {
					hasStartedCulling = YES;
				}
			} else {
				if ([row hasPrefix:@"Currency"]) {
					break;
				} else {
					NSArray * fields = [row componentsSeparatedByString:@"\t"];
					double conversionValue = 0.0f;
					for (int i = 1; i < [fields count]; ++i) {
						NSString * field = [fields objectAtIndex:i];
						if ([field length] > 0) {
							conversionValue = [field doubleValue];
							break;
						}
					}
					_DDCurrencyExchangeRates[rowIndex] = conversionValue;
					rowIndex++;
				}
			}
		}
		
		_ratesUpdated = YES;
	}
	
	[pool drain];
	[updatingLock unlock];
}

@end
