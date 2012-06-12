//
//  Foo.h
//  MyFactoryMethod
//
//  Created by Apple on 11.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Foo : NSObject
@property (nonatomic, assign) NSUInteger commonPar;
- (id)init;

//factory method  -  is a convenience method that you invoke on a class to say, “Make me one of your kind.”
//+ (Foo *)foo;//wrong
+ (id)fooWithparamOne:(NSUInteger)par1 paramTwo:(NSUInteger)par2 commonParam:(NSUInteger)par3; //ok


@end
