//
//  ViewController.m
//  JHToast-Demo
//
//  Created by jalaSmart on 16/9/1.
//  Copyright © 2016年 MrChen. All rights reserved.
//

#import "ViewController.h"
#import "JHToast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
       
        [JHToast showTopWithText:@"12345"];
        [JHToast showCenterWithText:@"12345678" duration:5];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
