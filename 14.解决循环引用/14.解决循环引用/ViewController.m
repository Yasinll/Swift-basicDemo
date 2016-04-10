//
//  ViewController.m
//  14.解决循环引用
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

#import "ViewController.h"
#import "NetworkTools.h"


@interface ViewController ()

@property (nonatomic, strong) NetworkTools *tools;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    
    self.tools = [[NetworkTools alloc] init];
    
    // 使用__weak 解决block的循环引用
    // 对象销毁后，weakSELF指向的地址为nil
    // ios5.0 提供
//     __weak typeof(self) weakSelf = self;
    
    // 使用__unsafe_unretained 解决block的循环引用
    // iOS4.0 提供
    // 对象销毁后，weakSelf指向地址不变，地址对应对象已经销毁了，崩溃了 报野指针
    __unsafe_unretained typeof(self) weakSelf = self;
    
    [self.tools loadData:^(NSString *result) {
        
        NSLog(@"%@", result);
        
        NSLog(@"%@", weakSelf.view);
        
    }];

}


-(void)dealloc {

    NSLog(@"ViewController dealloc");

}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
