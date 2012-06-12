//
//  SpicyFoo.h
//  MyFactoryMethod
//
//  Created by Apple on 11.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"

@interface SpicyFoo : Foo

@property (nonatomic, assign) NSUInteger parOne;

- (id) initWithParOne:(NSUInteger)par1 parThree:(NSUInteger)par3;

@end
