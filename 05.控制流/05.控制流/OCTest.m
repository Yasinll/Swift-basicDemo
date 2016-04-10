//
//  OCTest.m
//  05.控制流
//
//  Created by 浅爱 on 16/3/5.
//  Copyright © 2016年 y. All rights reserved.
//

#import "OCTest.h"

@implementation OCTest

-(void)test {

    int a = 10;
    
    switch (a) {
            
        case 10:{
            
            NSString *name = @"张三";
            
            NSLog(@"%@", name);
            
            break;
            
        }
    
        default:
            break;
    }
    
}

-(void)show {

    NSString *name = @"张三";
    
    if (name) {
        
        NSLog(@"%@", name);
        
    }if (name != nil) {
        
        
    }
    
}

@end
