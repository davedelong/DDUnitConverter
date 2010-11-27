//
//  DDMassUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDMassUnitConverter)

+ (id) massUnitConverter;

@end

enum {
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
typedef NSUInteger DDMassUnit;

@interface DDMassUnitConverter : DDUnitConverter {

}

@end
