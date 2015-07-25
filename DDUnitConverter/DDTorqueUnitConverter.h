//
//  DDTorqueUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDTorqueUnitConverter)

+ (instancetype)torqueUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDTorqueUnit) {
    DDTorqueUnitDyneCentimeters = 0,
	DDTorqueUnitGramForceCentimeters,
	DDTorqueUnitKilogramForceCentimeters,
	DDTorqueUnitKilogramForceMeters,
	DDTorqueUnitNewtonCentimeters,
	DDTorqueUnitNewtonMeters,
	DDTorqueUnitOunceForceInches,
	DDTorqueUnitPoundalFeet,
	DDTorqueUnitPoundForceFeet,
	DDTorqueUnitPoundForceInches
};

@interface DDTorqueUnitConverter : DDUnitConverter

@end
