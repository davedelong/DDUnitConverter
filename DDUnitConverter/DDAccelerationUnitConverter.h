//
//  DDAccelerationUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDAccelerationUnitConverter)

+ (id) accelerationUnitConverter;

@end

enum {
	DDAccelerationUnitFeetPerSecondsSquared = 0,
	DDAccelerationUnitGalileos,
	DDAccelerationUnitGForces,
	DDAccelerationUnitKilometersPerSecondsSquared,
	DDAccelerationUnitMetersPerSecondsSquared,
	DDAccelerationUnitMilesPerSecondsSquared
};
typedef NSUInteger DDAccelerationUnit;

@interface DDAccelerationUnitConverter : DDUnitConverter {

}

@end
