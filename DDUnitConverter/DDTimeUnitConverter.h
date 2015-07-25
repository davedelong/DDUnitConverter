//
//  DDTimeUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDTimeUnitConverter)

+ (instancetype)timeUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDTimeUnit) {
    DDTimeUnitBlinks = 0,
	DDTimeUnitCenturies,
	DDTimeUnitCesium133,
	DDTimeUnitDays,
	DDTimeUnitDecades,
	DDTimeUnitFortnights,
	DDTimeUnitHours,
	DDTimeUnitMicroseconds,
	DDTimeUnitMillenia,
	DDTimeUnitMilliseconds,
	DDTimeUnitMinutes,
	DDTimeUnitMonths,
	DDTimeUnitNanoseconds,
	DDTimeUnitSeconds,
	DDTimeUnitTicks,
	DDTimeUnitWeeks,
	DDTimeUnitYears,
	DDTimeUnitLunarYears,
	
	DDTimeUnitSiderealSeconds,
	DDTimeUnitSiderealMinutes,
	DDTimeUnitSiderealHours,
	DDTimeUnitSiderealDays,
	DDTimeUnitSiderealWeeks,
	DDTimeUnitSiderealYears,
	
	DDTimeUnitMicrofortnights
};

@interface DDTimeUnitConverter : DDUnitConverter

@end
