#import <Foundation/Foundation.h>
#import "DDUnitConversion.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	DDCurrencyUnitConverter * c = [DDUnitConverter currencyUnitConverter];
	
	NSLog(@"%@", [c convertNumber:[NSNumber numberWithInt:100] fromUnit:DDCurrencyUnitUSDollar toUnit:DDCurrencyUnitEuro]);
	
    // insert code here...
    NSLog(@"Hello, World!");
    [pool drain];
    return 0;
}
