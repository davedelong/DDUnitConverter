//
//  DDAreaUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDAreaUnitConverter)

+ (id) areaUnitConverter;

@end

enum {
	DDAreaUnitAcres = 0,
	DDAreaUnitBarns,
	DDAreaUnitHectares,
	DDAreaUnitRoods,
	DDAreaUnitSquareCentimeters,
	DDAreaUnitSquareDecimeters,
	DDAreaUnitSquareFeet,
	DDAreaUnitSquareInches,
	DDAreaUnitSquareKilometers,
	DDAreaUnitSquareMeters,
	DDAreaUnitSquareMiles,
	DDAreaUnitSquareMillimeters,
	DDAreaUntiSquareRods,
	DDAreaUnitSquareYards,
};

typedef NSUInteger DDAreaUnit;

@interface DDAreaUnitConverter : DDUnitConverter {

}

@end
