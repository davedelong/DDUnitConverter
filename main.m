#import <Foundation/Foundation.h>
#import "DDUnitConversion.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    DDUnitConverter *c = [DDUnitConverter velocityUnitConverter];
    
    NSNumber * value = [c convertNumber:[NSNumber numberWithInt:100]
                               fromUnit:DDVelocityUnitMilesPerHour
                                 toUnit:DDVelocityUnitFurlongsPerMicrofortnight];
    NSLog(@"%@", value);
    
	c = [DDUnitConverter currencyUnitConverter];
	
    value = [c convertNumber:[NSNumber numberWithInt:1] 
                    fromUnit:DDCurrencyUnitNorwegianKrone 
                      toUnit:DDCurrencyUnitUSDollar];
	NSLog(@"%@", value);
	
    [pool drain];
    return 0;
}
