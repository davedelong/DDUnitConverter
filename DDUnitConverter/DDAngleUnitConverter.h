//
//  DDAngleUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDAngleUnitConverter)

+ (instancetype) angleUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDAngleUnit) {
	DDAngleUnitCircles = 0,
	DDAngleUnitDegrees,
	DDAngleUnitGons,
	DDAngleUnitGrades,
	DDAngleUnitMinutes,
	DDAngleUnitMils,
	DDAngleUnitNauticalRhumbs,
	DDAngleUnitQuadrants,
	DDAngleUnitRadians,
	DDAngleUnitRevolutions,
	DDAngleUnitSeconds,
	DDAngleUnitTurns
};

@interface DDAngleUnitConverter : DDUnitConverter

@end
