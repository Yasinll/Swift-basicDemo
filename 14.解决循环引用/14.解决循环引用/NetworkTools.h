//
//  NetworkTools.h
//  14.解决循环引用
//
//  Created by 浅爱 on 16/3/7.
//  Copyright © 2016年 y. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkTools : NSObject


-(void)loadData:(void (^)(NSString *result))callBack;


@end
