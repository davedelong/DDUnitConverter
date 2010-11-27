# DDUnitConverter

A simple library for converting a value from one unit to another.

## Usage

Simply copy the "DDUnitConverter" subfolder into your project, and `#import "DDUnitConversion.h"`.

You can do the actual conversions like so:

	NSNumber * value = [[DDUnitConverter lengthUnitConverter] convert:[NSNumber numberWithInt:100]
															 fromUnit:DDLengthUnitLightyears
															   toUnit:DDLengthUnitAngstroms];
															   
## Precision

`DDUnitConverter` does all its transformations using `NSDecimalNumber`, so your precision is limited to anything `NSDecimalNumber` can handle.
															   
## Converters

`DDUnitConverter` has converters for the following categories:

- Acceleration
- Angle
- Area
- Bytes
- Currency (pulls rates from the [IMF](http://imf.org))
- Current
- Energy
- Force
- Illumination
- Inductance
- Length
- Magnitude
- Mass
- Power
- Pressure
- Radiation
- Temperature
- Time
- Torque
- Velocity
- Volume

If you want more categories, more units, or have found a bug with the conversions, please file an issue.

## Compatibility

`DDUnitConverter` was tested on Mac OS X 10.6, but it should work just fine on Mac OS X 10.5 and iOS 3+.

## License

Copyright (c) 2010 Dave DeLong

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.