//
//  ViewController.swift
//  12.闭包的使用
//
//  Created by 浅爱 on 16/3/6.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
       
        super.viewDidLoad()

        let closure = {(result: String) in
        
            print("wy")
            
            // 到此数据会掉
            print(result)
        
        }
        
        loadData(closure)
        
        //  如果闭包只会函数的为一个参数则函数的小括号可以省略‘()’
        loadData() { (result) -> () in
        
        }
        
    }

    
    
    // 尾随闭包
    func demo1() {
    
        // 如果闭包作为函数的最后一个参数的话，则小括号'()'在闭包前面（小括号'()'提前关闭)
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            
            
        }
        
        // 如果闭包没有参数和返回值，可以直接省略‘() -> Void in’
        dispatch_async(dispatch_get_main_queue(), {
        
        
        })
        
        
    }
    
    
    // 加载网络数据
    func loadData(callBack: (result: String) -> ()) {
    
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            
            NSThread.sleepForTimeInterval(1)
            
            let result = "wy"
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                callBack(result: result)
                
            })
        }
    
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

