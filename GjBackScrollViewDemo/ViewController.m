//
//  ViewController.m
//  GjBackScrollViewDemo
//
//  Created by Zhanggaoju on 2016/12/10.
//  Copyright © 2016年 Zhanggaoju. All rights reserved.
//

#import "ViewController.h"
#import "GjBackScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}
-(void)initUI{
    self.view.backgroundColor=[UIColor blackColor];
    
    GjBackScrollView *backView1=[[GjBackScrollView alloc]initWithFrame:CGRectMake(1, 1, self.view.bounds.size.width-2, self.view.bounds.size.height/4-1)];
    backView1.image=[UIImage imageNamed:@"tr"];//本地图片
    backView1.timeInterval = .06; //移动一次需要的时间
    backView1.rollSpace = .5; //每次移动的像素距离
    backView1.direction = RollDirectionLeftRight;//滚动的方向
    [backView1 startRoll]; //开始滚动
    [self.view addSubview:backView1];
    
    
    GjBackScrollView *backView2=[[GjBackScrollView alloc]initWithFrame:CGRectMake(1, self.view.bounds.size.height/4+2, self.view.bounds.size.width-2, self.view.bounds.size.height/4*3-3)];
    backView2.rollImageURL = @"https://a-ssl.duitang.com/uploads/item/201611/16/20161116161417_ydRxF.thumb.700_0.jpeg"; //网络图片
    backView2.timeInterval = .01; //移动一次需要的时间
    backView2.rollSpace = .7; //每次移动的像素距离
    backView2.direction = RollDirectionUpDown;//滚动的方向
    [backView2 startRoll]; //开始滚动
    [self.view addSubview:backView2];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
