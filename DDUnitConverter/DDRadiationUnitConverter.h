//
//  DDRadiationUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDRadiationUnitConverter)

+ (id) radiationUnitConverter;

@end

enum {
	DDRadiationUnitBecquerels = 0,
	DDRadiationUnitCuries
};
typedef NSUInteger DDRadiationUnit;

@interface DDRadiationUnitConverter : DDUnitConverter {

}

@end
