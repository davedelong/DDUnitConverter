//
//  DDRadiationUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDRadiationUnitConverter)

+ (instancetype)radiationUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDRadiationUnit) {
    DDRadiationUnitBecquerels = 0,
	DDRadiationUnitCuries
};

@interface DDRadiationUnitConverter : DDUnitConverter

@end
