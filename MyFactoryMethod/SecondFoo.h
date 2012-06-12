//
//  SecondFoo.h
//  MyFactoryMethod
//
//  Created by Apple on 12.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"

@interface SecondFoo : Foo

@property (nonatomic, assign) NSUInteger parTwo;

- (id) initWithParTwo:(NSUInteger)par2 parThree:(NSUInteger)par3;
@end
