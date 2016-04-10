//
//  NetworkTools.m
//  14.解决循环引用
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

#import "NetworkTools.h"

@interface NetworkTools ()

@property (nonatomic, strong) void(^callBack)(NSString *result);

@end

@implementation NetworkTools


-(void)loadData:(void (^)(NSString *))callBack {

    self.callBack = callBack;
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        // 模拟耗时
        [NSThread sleepForTimeInterval:2];
        
        NSString *result = @"办证 137xxxx";
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            
            // 执行其他的代码
            [self doWork:result];
            
        });
        
    });

}


-(void)doWork:(NSString *)result {

    self.callBack(result);

}


-(void)dealloc  {

    NSLog(@"NetworkTools dealloc");

}
@end
