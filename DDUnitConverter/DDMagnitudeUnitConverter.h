//
//  DDMagnitudeUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDMagnitudeUnitConverter)

+ (instancetype)magnitudeUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDMagnitudeUnit) {
    DDMagnitudeUnitYocto = 0,
	DDMagnitudeUnitZepto,
	DDMagnitudeUnitAtto,
	DDMagnitudeUnitFemto,
	DDMagnitudeUnitPico,
	DDMagnitudeUnitNano,
	DDMagnitudeUnitMicro,
	DDMagnitudeUnitMilli,
	DDMagnitudeUnitCenti,
	DDMagnitudeUnitDeci,
	DDMagnitudeUnitNormal,
	DDMagnitudeUnitDeka,
	DDMagnitudeUnitHecto,
	DDMagnitudeUnitKilo,
	DDMagnitudeUnitMega,
	DDMagnitudeUnitGiga,
	DDMagnitudeUnitTera,
	DDMagnitudeUnitPeta,
	DDMagnitudeUnitExa,
	DDMagnitudeUnitZetta,
	DDMagnitudeUnitYotta
};

@interface DDMagnitudeUnitConverter : DDUnitConverter

@end
