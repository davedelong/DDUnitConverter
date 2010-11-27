//
//  DDPowerUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDPowerUnitConverter)

+ (id) powerUnitConverter;

@end

enum {
	DDPowerUnitFootPoundForcesPerSecond = 0,
	DDPowerUnitHorsepower,
	DDPowerUnitMetricHorsepower,
	DDPowerUnitJoulesPerSecond,
	DDPowerUnitKilogramForceMetersPerSecond,
	DDPowerUnitWatts
};
typedef NSUInteger DDPowerUnit;

@interface DDPowerUnitConverter : DDUnitConverter {

}

@end
