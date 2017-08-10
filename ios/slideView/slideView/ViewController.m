//
//  ViewController.m
//  slideView
//
//  Created by 印书勋 on 2017/8/8.
//  Copyright © 2017年 印书勋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISlider * slider = [[UISlider alloc]initWithFrame:CGRectMake(10 , 100, 300, 50)];
    //01.minimumValue  : 当值可以改变时，滑块可以滑动到最小位置的值，默认为0.0
    slider.minimumValue = 0.0;
    
    //02.maximumValue : 当值可以改变时，滑块可以滑动到最大位置的值，默认为1.0
    slider.maximumValue = 100.0;
    
    //03.当前值
    slider.value = 50;
    
    //04.continuous : 如果设置YES，在拖动滑块的任何时候，滑块的值都会改变。默认设置为YES
    [slider setContinuous:YES];
    
    //05.滑块条最小值处设置的图片，默认为nil
//    slider.minimumValueImage = [UIImage imageNamed:@"2.jpg"];
    
    //06.滑块条最大值处设置的图片，默认为nil
//    slider.maximumValueImage = [UIImage imageNamed:@"1.jpg"];
    
    //07.minimumTrackTintColor : 小于滑块当前值滑块条的颜色，默认为蓝色
    slider.minimumTrackTintColor = [UIColor redColor];
    
    //08.maximumTrackTintColor: 大于滑块当前值滑块条的颜色，默认为白色
    slider.maximumTrackTintColor = [UIColor blueColor];
    
    //09.thumbTintColor : 当前滑块的颜色，默认为白色
    slider.thumbTintColor = [UIColor yellowColor];
    
    //    10.currentMaximumTrackImage : 滑块条最大值处设置的图片
    //    11.currentMinimumTrackImage : 滑块条最小值处设置的图片
    //    12.currentThumbImage: 当前滑块的图片
    
    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:slider];

}
-(void)sliderValueChanged:(UISlider *)slider
{
    NSLog(@"slider value%f",slider.value);
}

+(void)slideView
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
