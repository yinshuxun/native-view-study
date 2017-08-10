//
//  ViewController.m
//  UIImage
//
//  Created by 印书勋 on 2017/8/7.
//  Copyright © 2017年 印书勋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //ui image
    NSString *path = [[NSBundle mainBundle] resourcePath];
//    NSString *imagePath = [NSString stringWithFormat:@"%@/头像.jpeg",path];
//    UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagePath];
    UIImage *image  = [UIImage imageNamed:@"头像.jpeg"];
    
    //载体
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    //图片显示显示在屏幕
    imageView.frame = CGRectMake(10, 100, image.size.width/2, image.size.height/2);
    imageView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:imageView];
    
    //内容模式 contetnMode
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
