//
//  ViewController.swift
//  08.数组
//
//  Created by 浅爱 on 16/3/6.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        demo5()
    
    }
    
    
    func demo5() {
     
        // 容量是成倍扩展的，是2的倍数
        var array: [Int] = [Int]()
        
        for i in 0 ..< 10 {
        
            array.append(i)
            
            print("\(i) == \(array.capacity)")
        
        }
        
        
        
    }
    
    
    
    // 数组的删除，修改和添加
    func demo4() {
    
        var array = ["王五"]
    
        // 天剑
        array.append("赵六")
    
        print(array)
        
        // 通过下标修改
        array[1] = "李四"
        
        print(array)
        
        // 删除
        array.removeAtIndex(1)
        
        print(array)
        
        // 删除所有
        array.removeAll(keepCapacity: true)
        
        print(array)

    }

    // 合并
    func demo3() {
    
        let array1 = ["张三","李四","王五"]
        
        let array2 = ["赵六"]
        
        let _ = [1,2,3,4]
        
        let result1 = array1 + array2
    
        print(result1)

        // 类型不匹配不能直接合并
//        let result2 = array1 + array3
//        
//        print(result2)
        
        var array4 = ["O__O "]

        array4.appendContentsOf(array2)
        
        print(array4)
        
    }
    
    
    // 遍历
    func demo2() {
    
        let array1 = ["张三","李四","王五"]
        
        // for
        for var i = 0; i < array1.count; i++ {
        
            print(array1[i])
        
        }
        
        print("-------")
        
        // for in
        for value in array1 {
        
            print(value)
        
        }
        
        print("-------")

        //
        for (index, value) in array1.enumerate() {
        
            print("\(index) == \(value)")
        
        }
        
    }
    
    
    
    func demo1() {
        
        var array = [1,2,3,4]
    
        array.append(1)
        
        
        let array1 = ["张三", "李四"]
    
        print(array1)
        
        // 初始化一个空的数组
        var array2: [String] = [String]()
        
        array2.append("苹果")
        
        array2.append("🍎")
        
        print(array2)
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

