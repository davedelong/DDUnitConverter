//
//  DDInductanceUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDInductanceUnitConverter)

+ (id) inductanceUnitConverter;

@end

enum {
	DDInductanceUnitElectromagneticUnits = 0,
	DDInductanceUnitElectrostaticUnits,
	DDInductanceUnitHenrys,
	DDInductanceUnitMillihenrys,
	DDInductanceUnitMicrohenrys
};
typedef NSUInteger DDInductanceUnit;

@interface DDInductanceUnitConverter : DDUnitConverter {

}

@end
