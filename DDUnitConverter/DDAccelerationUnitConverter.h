//
//  DDAccelerationUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDAccelerationUnitConverter)

+ (instancetype) accelerationUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDAccelerationUnit) {
	DDAccelerationUnitFeetPerSecondsSquared = 0,
	DDAccelerationUnitGalileos,
	DDAccelerationUnitGForces,
	DDAccelerationUnitKilometersPerSecondsSquared,
	DDAccelerationUnitMetersPerSecondsSquared,
	DDAccelerationUnitMilesPerSecondsSquared
};

@interface DDAccelerationUnitConverter : DDUnitConverter

@end
