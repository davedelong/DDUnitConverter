//
//  DDTorqueUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDTorqueUnitConverter)

+ (id) torqueUnitConverter;

@end

enum {
	DDForceUnitDyneCentimeters = 0,
	DDForceUnitGramForceCentimeters,
	DDForceUnitKilogramForceCentimeters,
	DDForceUnitKilogramForceMeters,
	DDForceUnitNewtonCentimeters,
	DDForceUnitNewtonMeters,
	DDForceUnitOunceForceInches,
	DDForceUnitPoundalFeet,
	DDForceUnitPoundForceFeet,
	DDForceUnitPoundForceInches
};
typedef NSUInteger DDTorqueUnit;

@interface DDTorqueUnitConverter : DDUnitConverter {

}

@end
