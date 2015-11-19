#import <Foundation/Foundation.h>
#import "DDUnitConversion.h"

int main (int argc, const char *argv[]) {
    @autoreleasepool {
        DDUnitConverter * c;
        float value;
        
        c = [DDUnitConverter velocityUnitConverter];
        
        value = [[c convertNumber:@100
                         fromUnit:DDVelocityUnitMilesPerHour
                           toUnit:DDVelocityUnitFurlongsPerFortnight] floatValue];
        NSLog(@"100 MpH = %0.4f FpF", value);
        
        c = [DDUnitConverter currencyUnitConverter];
        [((DDCurrencyUnitConverter*)c) refreshExchangeRates];
        
        value = [[c convertNumber:@100
                         fromUnit:DDCurrencyUnitNorwegianKrone
                           toUnit:DDCurrencyUnitUSDollar] floatValue];
        NSLog(@"100 NOK = %0.4f USD", value);
        
        value = [[c convertNumber:@100
                         fromUnit:DDCurrencyUnitEuro //[DDCurrencyUnitConverter unitFromCurrencyCode:@"EUR"]
                           toUnit:DDCurrencyUnitUSDollar] floatValue]; //[DDCurrencyUnitConverter unitFromCurrencyCode:@"USD"]] floatValue];
        NSLog(@"100 EUR = %0.4f USD", value);
    }
    return 0;
}
