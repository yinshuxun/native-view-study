//
//  Persion.m
//  testObjectProperty
//
//  Created by 印书勋 on 2017/8/18.
//  Copyright © 2017年 印书勋. All rights reserved.
//

#import "Person.h"


@implementation Person
@synthesize age = _age;

-(void)setAge:(int)age{
    if(age  > 10){
        _age = 100;
    }else{
        _age = 0;
    }
}

@end
