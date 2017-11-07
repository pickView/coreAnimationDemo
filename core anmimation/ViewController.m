//
//  ViewController.m
//  core anmimation
//
//  Created by 周昌旭 on 2017/11/7.
//  Copyright © 2017年 ChangxuChou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<CALayerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *whiteView = [[UIView alloc] init];
    whiteView.backgroundColor = [UIColor whiteColor];
    whiteView.center = self.view.center;
    whiteView.frame = CGRectMake(0, 20, 200, 200);
    [self.view addSubview:whiteView];
    
    //    UIView *blueView = [[UIView alloc] init];
    //    blueView.backgroundColor = [UIColor blueColor];
    //    blueView.center = whiteView.center;
    //    blueView.bounds = CGRectMake(0, 0, 100, 100);
    //    [whiteView addSubview:blueView];
    
    CALayer *blueLayer = [[CALayer alloc] init];
    blueLayer.frame = CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    [whiteView.layer addSublayer:blueLayer];
    //    blueLayer.contents = (__bridge id)[UIImage imageNamed:@"allshops"].CGImage;
    //    blueLayer.contentsGravity = kCAGravityCenter;
    blueLayer.contentsScale = [UIScreen mainScreen].scale;
    blueLayer.delegate = self;
    [blueLayer display];
    
    blueLayer.anchorPoint = CGPointMake(1, 1);
    
}
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    //draw a thick red circle
    CGContextSetLineWidth(ctx, 10.0f);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextStrokeEllipseInRect(ctx, layer.bounds);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
