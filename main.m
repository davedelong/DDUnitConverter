#import <Foundation/Foundation.h>
#import "DDUnitConversion.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    DDUnitConverter *c = [DDUnitConverter velocityUnitConverter];
    
    NSDecimalNumber * value = [c convertNumber:[NSDecimalNumber decimalNumberWithString:@"100"]
                               fromUnit:DDVelocityUnitMilesPerHour
                                 toUnit:DDVelocityUnitFurlongsPerMicrofortnight];
    NSLog(@"%@", value);
    
	c = [DDUnitConverter currencyUnitConverter];
	
    value = [c convertNumber:[NSDecimalNumber decimalNumberWithString:@"1"]
                    fromUnit:DDCurrencyUnitEuro
                      toUnit:DDCurrencyUnitUSDollar];
	NSLog(@"%@", value);
    
    
	c = [DDUnitConverter lengthUnitConverter];
	
    value = [c convertNumber:[NSDecimalNumber decimalNumberWithString:@"1"]
                    fromUnit:DDLengthUnitKilometers
                      toUnit:DDLengthUnitMeters];
    
	NSLog(@"%@", value);
	
    [pool drain];
    return 0;
}
