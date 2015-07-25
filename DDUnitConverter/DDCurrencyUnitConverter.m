//
//  DDCurrencyUnitConverter.m
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import "DDCurrencyUnitConverter.h"
#import <dispatch/dispatch.h>

@interface DDCurrencyUnitConverterConnectionDelegate : NSObject {
@private
    NSError *error;
    NSMutableData *data;
    NSStringEncoding encoding;
    BOOL finished;
}
@property (nonatomic, getter=isFinished) BOOL finished;
@property (nonatomic, retain) NSError *error;
@property (nonatomic, readonly) NSString *string;
@end

@implementation DDCurrencyUnitConverterConnectionDelegate
@synthesize finished;
@synthesize error;

- (id)init {
    self = [super init];
    if (self) {
        encoding = NSMacOSRomanStringEncoding;
        [self setFinished:NO];
    }
    return self;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSHTTPURLResponse *)response {
    NSString *contentLength = [[response allHeaderFields] objectForKey:@"Content-Length"];
    NSUInteger length = [contentLength intValue];
    data = [[NSMutableData alloc] initWithLength:length];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)chunk {
    [data appendData:chunk];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    [self setError:nil];
    [self setFinished:YES];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)anError {
    [self setError:anError];
    [self setFinished:YES];
}

- (NSString *)string {
    return [[[NSString alloc] initWithData:data encoding:encoding] autorelease];
}

- (void)dealloc {
    [error release];
    [data release];
    [super dealloc];
}

@end

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

+ (instancetype)currencyUnitConverter {
	return [[[DDCurrencyUnitConverter alloc] init] autorelease];
}

@end


@implementation DDCurrencyUnitConverter

+ (NSString *)nameOfCurrencyUnit:(DDCurrencyUnit)unit {
    if (unit > DDCurrencyUnitSDR) { return nil; }
    return _DDCurrencyNames[unit];
}

+ (NSError *)refreshExchangeRatesInBackground {
	if ([NSThread currentThread] == [NSThread mainThread]) { return nil; }
    NSError *error = nil;
    
    @autoreleasepool {
        NSURL *imfURL = [NSURL URLWithString:@"http://www.imf.org/external/np/fin/data/rms_five.aspx?tsvflag=Y"];
        NSURLRequest *imfRequest = [NSURLRequest requestWithURL:imfURL];
        DDCurrencyUnitConverterConnectionDelegate *tmpDelegate = [[DDCurrencyUnitConverterConnectionDelegate alloc] init];
        
        NSURLConnection *imfConnection = [[NSURLConnection alloc] initWithRequest:imfRequest delegate:tmpDelegate];
        while ([tmpDelegate isFinished] == NO) {
            [[NSRunLoop currentRunLoop] runUntilDate:[NSDate date]];
        }
        [imfConnection release];
        
        NSString *raw = [tmpDelegate string];
        error = [tmpDelegate error];
        
        if (error == nil) {
            NSArray *rows = [raw componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
            BOOL hasStartedCulling = NO;
            short rowIndex = 0;
            for (NSString *row in rows) {
                if ([row length] == 0) { continue; }
                if (hasStartedCulling == NO) {
                    if ([row hasPrefix:@"Currency"]) {
                        hasStartedCulling = YES;
                    }
                } else {
                    if ([row hasPrefix:@"Currency"]) {
                        break;
                    } else {
                        NSArray *fields = [row componentsSeparatedByString:@"\t"];
                        NSString *currencyName = [fields objectAtIndex:0];
                        
                        double conversionValue = 0.0f;
                        for (int i = 1; i < [fields count]; ++i) {
                            NSString *field = [fields objectAtIndex:i];
                            if ([field length] > 0) {
                                conversionValue = [field doubleValue];
                                break;
                            }
                        }
                        [_DDCurrencyExchangeRates setObject:@(conversionValue) forKey:currencyName];
                        rowIndex++;
                    }
                }
            }
        }
        
        [error retain];
        [tmpDelegate release];
    }
    
    return [error autorelease];
}

+ (void)initialize {
	if (self == [DDCurrencyUnitConverter class]) {
        updateQueue = dispatch_queue_create("com.davedelong.ddunitconverter", 0);
        _DDCurrencyExchangeRates = [[NSMutableDictionary alloc] init];
        
        dispatch_async(updateQueue, ^{
            [self refreshExchangeRatesInBackground];
        });
	}
}

+ (NSDecimalNumber *)multiplierForUnit:(DDUnit)unit {
	NSDecimalNumber *multiplier = [NSDecimalNumber one];
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

- (NSNumber *)convertNumber:(NSNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to {
    dispatch_sync(updateQueue, ^{ });
    return [super convertNumber:number fromUnit:from toUnit:to];
}

- (void)refreshExchangeRates {
    [self refreshExchangeRatesWithCompletion:NULL];
}

- (void)refreshExchangeRatesWithCompletion:(void (^)(NSError *))completionHandler {
    
    dispatch_queue_t currentQueue = dispatch_get_current_queue();
    completionHandler = [completionHandler copy];
    dispatch_async(updateQueue, ^{
        NSError *error = [[self class] refreshExchangeRatesInBackground];
        if (completionHandler != NULL) {
            //wrap the completion handler in another block so we can capture the error
            dispatch_block_t block = ^{
                completionHandler(error);
            };
            dispatch_async(currentQueue, block);
        }
    });
    [completionHandler release];
}

@end
