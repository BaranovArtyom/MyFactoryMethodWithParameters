//
//  SecondFoo.m
//  MyFactoryMethod
//
//  Created by Apple on 12.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondFoo.h"

@implementation SecondFoo
@synthesize parTwo;

- (id) init
{
	if (self = [super init])
	{
    }
	
	return self;
}

- (id) initWithParTwo:(NSUInteger)par2 parThree:(NSUInteger)par3{
    self.parTwo = par2;
    self.commonPar = par3;

    return self;
}

@end
