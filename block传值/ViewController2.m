//
//  ViewController2.m
//  block传值
//
//  Created by Adminiatrator on 16/11/22.
//  Copyright © 2016年 Adminiatrator. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.str1 = @"123";

    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(tiaozhuan) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];
    
}

- (void)tiaozhuan
{
    
    self.senderBlock(self.str1);
    
    [self.navigationController popViewControllerAnimated:YES];
//    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
