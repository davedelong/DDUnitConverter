//
//  DDLengthUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDLengthUnitConverter)

+ (id) lengthUnitConverter;

@end

enum {
	DDLengthUnitAstronomicUnits = 0,
	DDLengthUnitCentimeters,
	DDLengthUnitChains,
	DDLengthUnitInches,
	DDLengthUnitFathoms,
	DDLengthUnitFeet,
	DDLengthUnitFurlongs,
	DDLengthUnitKilometers,
	DDLengthUnitLightyears,
	DDLengthUnitMeters,
	DDLengthUnitMillimeters,
	DDLengthUnitMiles,
	DDLengthUnitInternationalNauticalMiles,
	DDLengthUnitUKNauticalMiles,
	DDLengthUnitParsecs,
	DDLengthUnitYards,
	DDLengthUnitAngstroms
};
typedef NSUInteger DDLengthUnit;

@interface DDLengthUnitConverter : DDUnitConverter {

}

@end
