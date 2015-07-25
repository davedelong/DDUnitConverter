//
//  DDMassUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDMassUnitConverter)

+ (instancetype)massUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDMassUnit) {
    DDMassUnitAtomicMassUnits = 0,
	DDMassUnitDrachms,
	DDMassUnitDrams,
	DDMassUnitGrains,
	DDMassUnitGrams,
	DDMassUnitHundredWeights,
	DDMassUnitKilograms,
	DDMassUnitMilligrams,
	DDMassUnitTroyOunces,
	DDMassUnitUSOunces,
	DDMassUnitPennyweights,
	DDMassUnitTroyPounds,
	DDMassUnitUSPounds,
	DDMassUnitQuarters,
	DDMassUnitScruples,
	DDMassUnitShortHundredWeights,
	DDMassUnitShortTons,
	DDMassUnitSlugs,
	DDMassUnitStones,
	DDMassUnitUKTons,
	DDMassUnitTonnes,
	DDMassUnitFirkins
};

@interface DDMassUnitConverter : DDUnitConverter

@end
