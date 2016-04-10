//
//  NetworkTools.m
//  13.block循环引用
//
//  Created by 浅爱 on 16/3/6.
//  Copyright © 2016年 y. All rights reserved.
//

#import "NetworkTools.h"

@interface NetworkTools ()

@property (nonatomic, strong) void(^callBack) (NSString *result);

@end

@implementation NetworkTools


-(void)loadData:(void (^)(NSString *))callBack {
    
    self.callBack = callBack;
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        [NSThread sleepForTimeInterval:1];
        
        
        NSString *result = @"办证  137xxx";
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            // 执行很多代码
            [self doWork:result];
            
        });
        
    });

}


// 回调
-(void)doWork:(NSString *)result {

    self.callBack(result);

}


-(void)dealloc {

    NSLog(@"NetworkTools dealloc");
}


@end
