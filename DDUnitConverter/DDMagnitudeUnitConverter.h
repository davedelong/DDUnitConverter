//
//  DDMagnitudeUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDMagnitudeUnitConverter)

+ (id) magnitudeUnitConverter;

@end

enum {
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
typedef NSUInteger DDMagnitudeUnit;

@interface DDMagnitudeUnitConverter : DDUnitConverter {

}

@end
