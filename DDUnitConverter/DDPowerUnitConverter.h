//
//  DDPowerUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDPowerUnitConverter)

+ (instancetype)powerUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDPowerUnit) {
    DDPowerUnitFootPoundForcesPerSecond = 0,
	DDPowerUnitHorsepower,
	DDPowerUnitMetricHorsepower,
	DDPowerUnitJoulesPerSecond,
	DDPowerUnitKilogramForceMetersPerSecond,
	DDPowerUnitWatts,
    DDPowerUnitKilowatts
};

@interface DDPowerUnitConverter : DDUnitConverter

@end
