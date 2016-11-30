//
//  ViewController.m
//  block传值
//
//  Created by Adminiatrator on 16/11/22.
//  Copyright © 2016年 Adminiatrator. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:self action:@selector(tiaozhuan) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:btn];
    
}

- (void)tiaozhuan
{
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    
    vc2.senderBlock = ^(NSString *str){
        self.str = str;
        NSLog(@"self.str %@",self.str);
    };
    
    [self.navigationController pushViewController:vc2 animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
