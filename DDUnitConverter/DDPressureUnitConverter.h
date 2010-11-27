//
//  DDPressureUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDPressureUnitConverter)

+ (id) pressureUnitConverter;

@end

enum {
	DDPressureUnitAtmospheres = 0,
	DDPressureUnitBars,
	DDPressureUnitInchesOfMercury,
	DDPressureUnitInchesOfWater,
	DDPressureUnitMillimetersOfMercury,
	DDPressureUnitNewtonsPerSquareMeter,
	DDPressureUnitPascals,
	DDPressureUnitPoundForcesPerSquareFoot,
	DDPressureUnitPoundForcesPerSquareInch,
	DDPressureUnitTorrs
};
typedef NSUInteger DDPressureUnit;

@interface DDPressureUnitConverter : DDUnitConverter {

}

@end
