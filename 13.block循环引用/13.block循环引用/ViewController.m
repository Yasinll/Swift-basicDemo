//
//  ViewController.m
//  13.block循环引用
//
//  Created by 浅爱 on 16/3/6.
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
    
    
    [self.tools loadData:^(NSString *result) {
        
        NSLog(@"%@", result);
        
        NSLog(@"%@", self.view);
        
    }];
    
}


-(void)dealloc {

    NSLog(@"ViewController dealloc");


}

@end
