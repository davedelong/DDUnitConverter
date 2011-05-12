//
//  DDCurrencyUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "DDCurrencyUnitConverter.h"
#import <dispatch/dispatch.h>

static NSString *_DDCurrencyNames[] = {
    @"Euro",
    @"Japanese Yen",
    @"U.K. Pound Sterling",
    @"U.S. Dollar",
    @"Algerian Dinar",
    @"Argentine Peso",
    @"Australian Dollar",
    @"Bahrain Dinar",
    @"Botswana Pula",
    @"Brazilian Real",
    @"Brunei Dollar",
    @"Canadian Dollar",
    @"Chilean Peso",
    @"Chinese Yuan",
    @"Colombian Peso",
    @"Czech Koruna",
    @"Danish Krone",
    @"Hungarian Forint",
    @"Icelandic Krona",
    @"Indian Rupee",
    @"Indonesian Rupiah",
    @"Iranian Rial",
    @"Israeli New Sheqel",
    @"Kazakhstani Tenge",
    @"Korean Won",
    @"Kuwaiti Dinar",
    @"Libyan Dinar",
    @"Malaysian Ringgit",
    @"Mauritian Rupee",
    @"Mexican Peso",
    @"Nepalese Rupee",
    @"New Zealand Dollar",
    @"Norwegian Krone",
    @"Rial Omani",
    @"Pakistani Rupee",
    @"Nuevo Sol",
    @"Philippine Peso",
    @"Polish Zloty",
    @"Qatar Riyal",
    @"Russian Ruble",
    @"Saudi Arabian Riyal",
    @"Singapore Dollar",
    @"South African Rand",
    @"Sri Lanka Rupee",
    @"Swedish Krona",
    @"Swiss Franc",
    @"Thai Baht",
    @"Trinidad And Tobago Dollar",
    @"Tunisian Dinar",
    @"U.A.E. Dirham",
    @"Peso Uruguayo",
    @"Bolivar Fuerte",
    @"SDR"
};
static NSMutableDictionary *_DDCurrencyExchangeRates = nil;
static dispatch_queue_t updateQueue = nil;

@implementation DDUnitConverter (DDCurrencyUnitConverter)

+ (id) currencyUnitConverter {
	return [[[DDCurrencyUnitConverter alloc] init] autorelease];
}

@end


@implementation DDCurrencyUnitConverter

+ (NSString *)nameOfCurrencyUnit:(DDCurrencyUnit)unit {
    if (unit > DDCurrencyUnitSDR) { return nil; }
    return _DDCurrencyNames[unit];
}

+ (void) refreshExchangeRatesInBackground {
	if ([NSThread currentThread] == [NSThread mainThread]) { return; }
    NSLog(@"locking for refresh");
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
                    NSString *currencyName = [fields objectAtIndex:0];
                    
					double conversionValue = 0.0f;
					for (int i = 1; i < [fields count]; ++i) {
						NSString * field = [fields objectAtIndex:i];
						if ([field length] > 0) {
							conversionValue = [field doubleValue];
							break;
						}
					}
                    [_DDCurrencyExchangeRates setObject:[NSDecimalNumber numberWithDouble:conversionValue] forKey:currencyName];
					rowIndex++;
				}
			}
		}
	}
    
    NSLog(@"rates: %@", _DDCurrencyExchangeRates);
	
	[pool drain];
    NSLog(@"unlocking from refresh");
}

+ (void) initialize {
	if (self == [DDCurrencyUnitConverter class]) {
        updateQueue = dispatch_queue_create("com.davedelong.ddunitconverter", 0);
        _DDCurrencyExchangeRates = [[NSMutableDictionary alloc] init];
        
        dispatch_async(updateQueue, ^{
            [self refreshExchangeRatesInBackground];
        });
	}
}

+ (NSDecimalNumber *) multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber * multiplier = [NSDecimalNumber one];
	if (unit < DDCurrencyUnitSDR) {
        NSString *name = _DDCurrencyNames[unit];
        multiplier = [_DDCurrencyExchangeRates objectForKey:name];
        if (multiplier == nil) {
            NSLog(@"unknown currency: %@ (%lu)", name, unit);
            multiplier = [NSDecimalNumber one];
        }
	}
	return multiplier;
}

- (NSNumber *) convertNumber:(NSNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to {
    dispatch_sync(updateQueue, ^{
        YES; //this is so the method will wait while refreshing is going on 
    });
    return [super convertNumber:number fromUnit:from toUnit:to];
}

- (void) refreshExchangeRates {
    [self refreshExchangeRatesWithCompletion:NULL];
}

- (void)refreshExchangeRatesWithCompletion:(void (^)(void))completionHandler {
    
    dispatch_queue_t currentQueue = dispatch_get_current_queue();
    completionHandler = [completionHandler copy];
    dispatch_async(updateQueue, ^{
        [[self class] refreshExchangeRatesInBackground];
        if (completionHandler != NULL) {
            dispatch_async(currentQueue, completionHandler);
        }
    });
    [completionHandler release];
}

@end
