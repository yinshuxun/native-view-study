//
//  main.m
//  testObjectProperty
//
//  Created by 印书勋 on 2017/8/18.
//  Copyright © 2017年 印书勋. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        Person *per = [Person new];
        
        per.age = 11;
        NSLog(@"age:%zi",per.age);
        
    }
    return 0;
}
