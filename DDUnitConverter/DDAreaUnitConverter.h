//
//  DDAreaUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDAreaUnitConverter)

+ (instancetype)areaUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDAreaUnit) {
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

@interface DDAreaUnitConverter : DDUnitConverter

@end
