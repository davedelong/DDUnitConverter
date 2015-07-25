//
//  DDTemperatureUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDTemperatureUnitConverter)

+ (instancetype)temperatureUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDTemperatureUnit) {
    DDTemperatureUnitCelcius = 0,
	DDTemperatureUnitFarenheit,
	DDTemperatureUnitKelvin,
	DDTemperatureUnitReaumur,
	DDTemperatureUnitRankine
};

@interface DDTemperatureUnitConverter : DDUnitConverter

@end
