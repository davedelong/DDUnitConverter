//
//  DDForceUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDForceUnitConverter)

+ (id) forceUnitConverter;

@end

enum {
	DDForceUnitDynes = 0,
	DDForceUnitKilogramForces,
	DDForceUnitNewtons,
	DDForceUnitPoundals,
	DDForceUnitPoundForces,
	DDForceUnitSthenes
};
typedef NSUInteger DDForceUnit;

@interface DDForceUnitConverter : DDUnitConverter {

}

@end
