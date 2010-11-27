//
//  DDCurrentUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDCurrentUnitConverter)

+ (id) currentUnitConverter;

@end

enum {
	DDCurrentUnitAmperes = 0,
	DDCurrentUnitElectromagneticUnits,
	DDCurrentUnitMilliamperes
};
typedef NSUInteger DDCurrentUnit;

@interface DDCurrentUnitConverter : DDUnitConverter {

}

@end
