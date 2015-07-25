//
//  DDEnergyUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDEnergyUnitConverter)

+ (instancetype)energyUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDEnergyUnit) {
    DDEnergyUnitBTUs = 0,
	DDEnergyUnitCalories,
	DDEnergyUnitElectronVolts,
	DDEnergyUnitErgs,
	DDEnergyUnitFootPoundForces,
	DDEnergyUnitJoules,
	DDEnergyUnitKilogramForceMeters,
	DDEnergyUnitKilowattHours,
	DDEnergyUnitNewtonMeters,
	DDEnergyUnitTherms,
	DDEnergyUnitWattHours
};

@interface DDEnergyUnitConverter : DDUnitConverter

@end
