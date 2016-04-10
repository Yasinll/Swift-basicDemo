//
//  ViewController.swift
//  11.闭包
//
//  Created by 浅爱 on 16/3/6.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        demo1()
        
        demo11()
        
        demo2()
        
        demo22()
        
        demo3()
        
        demo33()
        
        demo4()
        
    }
    
    func demo4() {
    
        let closure = { (a: Int) -> Int in
        
            return 100
        
        }
        
        func demo(a: Int) -> Int {
        
            return 100
        }
    
    }
    
    
    
    // 有参有返回值的闭包
    // 格式：比报名 = { (参数名: 参数类型, ...) -> 返回值类型 in 执行代码 }
    func demo33() {
    
        let closure = { (num1 a: Int, num2 b: Int) -> Int in
        
            print("wy")
            
            print(a)
            
            print(b)
            
            return a + b
            
        }
    
        let r = closure(num1: 7, num2: 14)
        
        print(r)
    
    }
    

    // 有参有返回值的函数
    func demo3() {
    
        func test(num1 a: Int, num2 b: Int) -> Int {
        
            print("wy")
            
            print(a)
            
            print(b)
            
            return a + b
        
        }
        
        let r = test(num1: 7, num2: 14)
        
        print(r)
        
    }
    
    
    // 有参无返回值的闭包
    func demo22() {
    
        let closure = { (num1 a: Int) in
            
            print("wy")
            
            print(a)
        
        }
    
        closure(num1: 100)
        
    }
    
    // 无参无返回值
    func demo2() {
    
        func test(num1 a: Int) {
         
            print("wy")
            
            print(a)
            
        }
    
        test(num1: 100)
    
    }

    // 无参无返回值的一个闭包
    func demo11() {
    
        let closure = {
        
            print("wy")
        
        }
    
        closure()
        
    }
    
    
    // 无参无返回值
    func demo1() {
    
        func test() {
        
            print("wy")
        
        }
    
        test()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

