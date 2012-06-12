//
//  Foo.m
//  MyFactoryMethod
//
//  Created by Apple on 11.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"
#import "SpicyFoo.h"
#import "SecondFoo.h"

@implementation Foo
@synthesize commonPar;

// instance method
- (id) init
{
	if (self = [super init])
	{
	}
	
	return self;
}




//class method
//+ (Foo *)foo////wrong
+ (id)fooWithparamOne:(NSUInteger)par1 paramTwo:(NSUInteger)par2 commonParam:(NSUInteger)par3
{
    //Because this is a class method (as designated by the +), self refers to the class object:
//    If you send this message to a Foo, self is Foo.
//    If you send this message to a SpicyFoo, self is SpicyFoo.
    // No matter what the actual class is, the alloc will be sent to that class.
    
    if (par1) {
        return [[[self alloc] initWithParOne:par1 parThree:par3] autorelease];//ok
    }else {
        return [[[self alloc] initWithParTwo:par2 parThree:par3] autorelease];//ok
    }
    
    
}



@end
