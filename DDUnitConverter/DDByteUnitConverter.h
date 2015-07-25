//
//  DDByteUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDByteUnitConverter)

+ (instancetype)byteUnitConverter;

@end

typedef NS_ENUM(NSInteger, DDByteUnit) {
	DDByteUnitBit = 0,
	DDByteUnitCrumb,
	DDByteUnitNibble,
	DDByteUnitByte,
	
	DDByteUnitDecabit,
	DDByteUnitHectobit,
	DDByteUnitKilobit,
	DDByteUnitMegabit,
	DDByteUnitGigabit,
	DDByteUnitTerabit,
	DDByteUnitPetabit,
	DDByteUnitExabit,
	DDByteUnitZettabit,
	DDByteUnitYottabit,
	
	DDByteUnitDecabyte,
	DDByteUnitHectobyte,
	DDByteUnitKilobyte,
	DDByteUnitMegabyte,
	DDByteUnitGigabyte,
	DDByteUnitTerabyte,
	DDByteUnitPetabyte,
	DDByteUnitExabyte,
	DDByteUnitZettabyte,
	DDByteUnitYottabyte,
	
	DDByteUnitKibibit,
	DDByteUnitMebibit,
	DDByteUnitGibibit,
	DDByteUnitTebibit,
	DDByteUnitPebibit,
	DDByteUnitExbibit,
//	DDByteUnitZebibit,
//	DDByteUnitYobibit,
	
	DDByteUnitKibibyte,
	DDByteUnitMebibyte,
	DDByteUnitGibibyte,
	DDByteUnitTebibyte,
	DDByteUnitPebibyte,
	DDByteUnitExbibyte,
//	DDByteUnitZebibyte,
//	DDByteUnitYobibyte
};

@interface DDByteUnitConverter : DDUnitConverter

@end
