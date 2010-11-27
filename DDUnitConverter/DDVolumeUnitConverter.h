//
//  DDVolumeUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDVolumeUnitConverter)

+ (id) volumeUnitConverter;

@end

enum {
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
	DDVolumeUnitNumber10Cans
};
typedef NSUInteger DDVolumeUnit;

@interface DDVolumeUnitConverter : DDUnitConverter {

}

@end
