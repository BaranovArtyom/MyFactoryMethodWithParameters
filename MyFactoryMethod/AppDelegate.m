//
//  AppDelegate.m
//  MyFactoryMethod
//
//  Created by Apple on 11.06.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "SpicyFoo.h"
#import "SecondFoo.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //send  earlier factory method to  subclass
    SpicyFoo *aFoo = [SpicyFoo fooWithparamOne:10 paramTwo:0 commonParam:111];// ERROR CASE( then + (Foo *)foo  ): the foo convenience method returns a new instance of Foo, not SpicyFoo — even though we were addressing the SpicyFoo class.
    NSLog(@"aFoo.description %@ %d %d", aFoo.description, aFoo.parOne, aFoo.commonPar);
    
    SecondFoo *aFoo2 = [SecondFoo fooWithparamOne:0 paramTwo:200 commonParam:222];// ERROR CASE( then + (Foo *)foo  ): the foo convenience method returns a new instance of Foo, not SpicyFoo — even though we were addressing the SpicyFoo class.
    NSLog(@"aFoo2.description %@ %d %d", aFoo2.description, aFoo2.parTwo, aFoo2.commonPar);
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
