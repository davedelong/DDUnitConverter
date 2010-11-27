//
//  DDVelocityUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDVelocityUnitConverter)

+ (id) velocityUnitConverter;

@end

enum {
	DDVelocityUnitCentimetersPerHour = 0,
	DDVelocityUnitCentimetersPerMinute,
	DDVelocityUnitCentimetersPerSecond,
	DDVelocityUnitFeetPerHour,
	DDVelocityUnitFeetPerMinute,
	DDVelocityUnitFeetPerSecond,
	DDVelocityUnitInchesPerHour,
	DDVelocityUnitInchesPerMinute,
	DDVelocityUnitInchesPerSecond,
	DDVelocityUnitKilometersPerHour,
	DDVelocityUnitKilometersPerMinute,
	DDVelocityUnitKilometersPerSecond,
	DDVelocityUnitKnots,
	DDVelocityUnitLight,
	DDVelocityUnitMach,
	DDVelocityUnitMetersPerHour,
	DDVelocityUnitMetersPerMinute,
	DDVelocityUnitMetersPerSecond,
	DDVelocityUnitMilesPerHour,
	DDVelocityUnitMilesPerMinute,
	DDVelocityUnitMilesPerSecond,
	DDVelocityUnitFurlongsPerMicrofortnight
};
typedef NSUInteger DDVelocityUnit;

@interface DDVelocityUnitConverter : DDUnitConverter {

}

@end
