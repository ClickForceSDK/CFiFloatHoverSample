//
//  ViewController.m
//  CFiFloatHoverSample
//
//  Created by CF-NB on 2020/2/21.
//  Copyright © 2020 CF-NB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIScrollView *nsc = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [nsc setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height * 100)];
    [self.view addSubview:nsc];

    mffloathover = [[MFFloatHover alloc] init];
    mffloathover.bannerId = @"10175";
    mffloathover.delegate = self;
    [mffloathover debugInfo:YES];
    [mffloathover setScrollview:nsc];
    [mffloathover requestAd];
    
    [self.view addSubview:mffloathover];
}

- (void)onSuccessToMFFloatHover
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    [mffloathover show];
}

- (void)onFailToMFFloatHover
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onClickToMFFloatHover
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)onCloseToMFFloatHover
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
