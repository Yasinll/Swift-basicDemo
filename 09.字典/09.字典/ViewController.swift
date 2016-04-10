//
//  ViewController.swift
//  09.字典
//
//  Created by 浅爱 on 16/3/6.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        demo4()
        
    }
    
    
    // 修改
    func demo4() {
    
        var dic1 = ["name": "张三", "age": "20"]
        
        // 删除
//        dic1["age"] = nil
        
        // 删除2
        dic1.removeValueForKey("age")
        
        print(dic1)
        
        print("-------")
        
        //添加
        dic1["address"] = "北京"
    
        print(dic1)
        
        
        print("-------")
        
        // 修改
        dic1["address"] = "上海"
        
        print(dic1)
        
        dic1.updateValue("青岛", forKey: "address")
        
        print(dic1)
        
    }
    
    
    // 合并
    func demo3() {
    
        var dic1 = ["name": "张三", "age": "20"]
        
        let dic2 = ["address": "北京"]
        
//        let dic2 = ["address": CGPoint(x: 0, y: 0)]
        
        var dic3 = ["title": 20]
        
        for (key, value) in dic2 {
        
            dic1[key] = value
        
        }
        
        print(dic1)
        
        
        // 不同类型的字典不能合并
//        for (key, value) in dic2 {
//        
//            dic3[key] = valu3
//
//        }
    
    }
    
    
    // 遍历
    func demo2() {
    
        let dic1 = ["name": "张三", "age": "20"]
        
        for (key, value) in dic1 {
        
            print("\(key) == \(value)")
        
        }
        
    
    
    }
    
    
    // 字典是无序的
    func demo1() {
    
        let dic1 = ["name": "张三", "age": "20"]
        
        var dic2 = ["name": "张三", "age": "20"]
        
        dic2["address"] = "北京"
        
        print(dic1)
    
        print(dic2)
        
        
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

