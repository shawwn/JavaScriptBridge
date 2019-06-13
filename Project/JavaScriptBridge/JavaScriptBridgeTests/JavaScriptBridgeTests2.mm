//
//  JavaScriptBridgeTests2.m
//  JavaScriptBridgeTests
//
//  Created by BB on 5/8/19.
//  Copyright © 2019 kishikawa katsumi. All rights reserved.
//

#import <Foundation/Foundation.h>

void testCase()
{
  NSString*(^foo)(NSString*, NSString*) = ^NSString*(NSString* a, NSString* b) {
    return [NSString stringWithFormat:@"%@/%@", a, b];
  };
  
  typedef int (*fooCallback)(int, int);
  fooCallback add = (fooCallback)(__bridge void*)(id)^int(int a, int b) {
    return a + b;
  };
  add(1,2);
}
