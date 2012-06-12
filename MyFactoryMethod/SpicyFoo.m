//
//  SpicyFoo.m
//  MyFactoryMethod
//
//  Created by Apple on 11.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SpicyFoo.h"
#import "Foo.h"

@implementation SpicyFoo
@synthesize parOne;

- (id) init
{
	if (self = [super init])
	{
    }
	
	return self;
}

- (id) initWithParOne:(NSUInteger)par1 parThree:(NSUInteger)par3{
    self.parOne = par1;
    self.commonPar = par3;
    return self;
}




@end
