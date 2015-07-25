//
//  DDVelocityUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDVelocityUnitConverter)

+ (instancetype)velocityUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDVelocityUnit) {
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
	DDVelocityUnitFurlongsPerFortnight
};

@interface DDVelocityUnitConverter : DDUnitConverter

@end
