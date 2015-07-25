//
//  DDLengthUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDLengthUnitConverter)

+ (instancetype)lengthUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDLengthUnit) {
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

@interface DDLengthUnitConverter : DDUnitConverter

@end
