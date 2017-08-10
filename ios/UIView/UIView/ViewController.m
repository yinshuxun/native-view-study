//
//  ViewController.m
//  UIView
//
//  Created by 印书勋 on 2017/8/4.
//  Copyright © 2017年 印书勋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(10,30,355,627);
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    NSLog(@"center x:%f,y:%f",view1.center.x,view1.center.y);
    
//    NLog(@"w:%f h:%f",[[UIView alloc] init].bounds.size.width,[[UIView alloc] init].bounds.size.height);
    
    
    //父视图
    UIView *superView = view1.superview;
    superView.backgroundColor = [UIColor greenColor];
    //添加子视图，坐标是根据父视图的
    UIView *view2 = [[UIView alloc] init];
    view2.frame = CGRectMake(10, 30, 300, 100);
    view2.tag = 2;
    view2.backgroundColor = [UIColor yellowColor];
    [view1 addSubview:view2];
    
    UIView *view3 = [[UIView alloc] init];
    view3.frame = CGRectMake(40, 10, 100, 300);
    view3.tag = 3;
    view3.backgroundColor = [UIColor purpleColor];
    [view1 addSubview:view3];
    
    //设置子视图属性
    NSArray *subViews = view1.subviews;
    for(UIView *view in subViews)
    {
        if(view.tag == 2)
        view.backgroundColor = [UIColor whiteColor];
    }
    
    //交换层级
    [view1 exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    //放到最顶层最底层
    [view1 bringSubviewToFront:view2];
    [view1 sendSubviewToBack:view3];
    
    //自适应
    UIView *backView = [[UIView alloc] init];
    backView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-15,400, 50, 50);
    backView.backgroundColor = [UIColor orangeColor];
    backView.tag = 1001
    //准许自视图自适应
    backView.autoresizesSubviews = YES;
    [self.view addSubview:backView];
    
    UIView *topView = [[UIView alloc]   init];
    topView.frame = CGRectMake(10, 10, 30, 30);
    topView.backgroundColor = [UIColor greenColor];
    [backView addSubview:topView];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
