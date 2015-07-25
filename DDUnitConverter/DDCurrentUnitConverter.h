//
//  DDCurrentUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDCurrentUnitConverter)

+ (instancetype)currentUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDCurrentUnit) {
	DDCurrentUnitAmperes = 0,
	DDCurrentUnitElectromagneticUnits,
	DDCurrentUnitMilliamperes
};

@interface DDCurrentUnitConverter : DDUnitConverter

@end
