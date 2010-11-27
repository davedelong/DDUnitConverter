//
//  DDUnitConverter.h
//  DDUnitConverter
//
//  Created by Dave DeLong on 11/25/10.
//  Copyright 2010 Home. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NSUInteger DDUnit;

@interface DDUnitConverter : NSObject {

}

- (NSNumber *) convertNumber:(NSNumber *)number fromUnit:(DDUnit)from toUnit:(DDUnit)to;

@end
