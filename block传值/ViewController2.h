//
//  ViewController2.h
//  block传值
//
//  Created by Adminiatrator on 16/11/22.
//  Copyright © 2016年 Adminiatrator. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SenderBlock)(NSString *chuanzhi);

@interface ViewController2 : UIViewController

@property (nonatomic,copy) SenderBlock senderBlock;

@property (nonatomic,strong) NSString *str1;

- (void)senderBlock:(SenderBlock)block;

@end
