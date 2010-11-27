//
//  DDTemperatureUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDTemperatureUnitConverter)

+ (id) temperatureUnitConverter;

@end

enum {
	DDTemperatureUnitCelcius = 0,
	DDTemperatureUnitFarenheit,
	DDTemperatureUnitKelvin,
	DDTemperatureUnitReaumur,
	DDTemperatureUnitRankine
};
typedef NSUInteger DDTemperatureUnit;

@interface DDTemperatureUnitConverter : DDUnitConverter {

}

@end
