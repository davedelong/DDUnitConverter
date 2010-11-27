//
//  DDTimeUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDTimeUnitConverter)

+ (id) timeUnitConverter;

@end

enum {
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
typedef NSUInteger DDTimeUnit;

@interface DDTimeUnitConverter : DDUnitConverter {

}

@end
