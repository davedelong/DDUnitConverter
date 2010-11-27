//
//  DDAngleUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDAngleUnitConverter)

+ (id) angleUnitConverter;

@end

enum {
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
typedef NSUInteger DDAngleUnit;

@interface DDAngleUnitConverter : DDUnitConverter {

}

@end
