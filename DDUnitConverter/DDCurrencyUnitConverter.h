//
//  DDCurrencyUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/26/10.
//  Copyright 2010-2015 Dave DeLong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDUnitConverter.h"

@interface DDUnitConverter (DDCurrencyUnitConverter)

+ (instancetype)currencyUnitConverter;

@end

/**
    If fetching currencies results in an HTTP error, then the callback will provide
    an error in the `DDHTTPErrorDomain`. The code will be the HTTP status code,
    and the NSHTTPURLResponse will be in the `userInfo` dictionary under
    the `DDHTTPResponseKey`.
 */
extern NSString * const DDHTTPErrorDomain;
extern NSString * const DDHTTPResponseKey;

typedef NS_ENUM(NSInteger, DDCurrencyUnit) {
	DDCurrencyUnitEuro = 0,
	DDCurrencyUnitJapaneseYen,
	DDCurrencyUnitUKPoundSterling,
	DDCurrencyUnitUSDollar,
	DDCurrencyUnitAlgerianDinar,
	DDCurrencyUnitArgentinePeso,
	DDCurrencyUnitAustralianDollar,
	DDCurrencyUnitBahrainDinar,
	DDCurrencyUnitBotswanaPula,
	DDCurrencyUnitBrazilianReal,
	DDCurrencyUnitBruneiDollar,
	DDCurrencyUnitCanadianDollar,
	DDCurrencyUnitChileanPeso,
	DDCurrencyUnitChineseYuan,
	DDCurrencyUnitColombianPeso,
	DDCurrencyUnitCzechKoruna,
	DDCurrencyUnitDanishKrone,
	DDCurrencyUnitHungarianForint,
	DDCurrencyUnitIcelandicKrona,
	DDCurrencyUnitIndianRupee,
	DDCurrencyUnitIndonesianRupiah,
	DDCurrencyUnitIranianRial,
	DDCurrencyUnitIsraeliNewSheqel,
	DDCurrencyUnitKazakhstaniTenge,
	DDCurrencyUnitKoreanWon,
	DDCurrencyUnitKuwaitiDinar,
	DDCurrencyUnitLibyanDinar,
	DDCurrencyUnitMalaysianRinggit,
	DDCurrencyUnitMauritianRupee,
	DDCurrencyUnitMexicanPeso,
	DDCurrencyUnitNepaleseRupee,
	DDCurrencyUnitNewZealandDollar,
	DDCurrencyUnitNorwegianKrone,
	DDCurrencyUnitRialOmani,
	DDCurrencyUnitPakistaniRupee,
	DDCurrencyUnitNuevoSol,
	DDCurrencyUnitPhilippinePeso,
	DDCurrencyUnitPolishZloty,
	DDCurrencyUnitQatarRiyal,
	DDCurrencyUnitRussianRuble,
	DDCurrencyUnitSaudiArabianRiyal,
	DDCurrencyUnitSingaporeDollar,
	DDCurrencyUnitSouthAfricanRand,
	DDCurrencyUnitSriLankaRupee,
	DDCurrencyUnitSwedishKrona,
	DDCurrencyUnitSwissFranc,
	DDCurrencyUnitThaiBaht,
	DDCurrencyUnitTrinidadAndTobagoDollar,
	DDCurrencyUnitTunisianDinar,
	DDCurrencyUnitUAEDirham,
	DDCurrencyUnitPesoUruguayo,
	DDCurrencyUnitBolivarFuerte,
	DDCurrencyUnitSDR
};

@interface DDCurrencyUnitConverter : DDUnitConverter

//retrieve a displayable (english) name of the currency unit
+ (NSString *)nameOfCurrencyUnit:(DDCurrencyUnit)unit;

//refresh the exchange rates
- (void)refreshExchangeRates;

//refresh the exchange rates and invoke the completion handler upon completion.
//the completion handler is guaranteed to be executed on the calling queue
- (void)refreshExchangeRatesWithCompletion:(void(^)(NSError *))completionHandler;

@end
