//
//  DDVolumeUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDVolumeUnitConverter)

+ (instancetype)volumeUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDVolumeUnit) {
    DDVolumeUnitDryBarrels = 0,
	DDVolumeUnitLiquidBarrels,
	DDVolumeUnitUKBushels,
	DDVolumeUnitUSBushels,
	DDVolumeUnitCentiliters,
	DDVolumeUnitCoffeeSpoons,
	DDVolumeUnitCubicCentimeters,
	DDVolumeUnitCubicDecimeters,
	DDVolumeUnitCubicFeet,
	DDVolumeUnitCubicInches,
	DDVolumeUnitCubicKilometers,
	DDVolumeUnitCubicMeters,
	DDVolumeUnitCubicMiles,
	DDVolumeUnitCubicMillimeters,
	DDVolumeUnitCubicYards,
	DDVolumeUnitCups,
	DDVolumeUnitDashes,
	DDVolumeUnitDeciliters,
	DDVolumeUnitDrachms,
	DDVolumeUnitDrams,
	DDVolumeUnitDrops,
	DDVolumeUnitGallons,
	DDVolumeUnitUKGills,
	DDVolumeUnitUSGills,
	DDVolumeUnitLiters,
	DDVolumeUnitMilliliters,
	DDVolumeUnitUKMinims,
	DDVolumeUnitUSMinims,
	DDVolumeUnitUKFluidOunces,
	DDVolumeUnitUSFluidOunces,
	DDVolumeUnitUKPecks,
	DDVolumeUnitUSPecks,
	DDVolumeUnitPinches,
	DDVolumeUnitUKPints,
	DDVolumeUnitUSDryPints,
	DDVolumeUnitUSFluidPints,
	DDVolumeUnitUKQuarts,
	DDVolumeUnitUSDryQuarts,
	DDVolumeUnitUSLiquidQuarts,
	DDVolumeUnitTablespoons,
	DDVolumeUnitTeaspons,
	DDVolumeUnitNumber2Point5Cans,
	DDVolumeUnitNumber10Cans,
    DDVolumeUnitUKGallons
};

@interface DDVolumeUnitConverter : DDUnitConverter

@end
