//
//  ViewController.swift
//  10.函数
//
//  Created by 浅爱 on 16/3/6.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        demo1()
        
        demo2(10)
        
        demo3(num1: 7, num2: 14)
        
        let r1 = sum(num1: 7, num2: 14)
        
        let r2 = sum1(7, num2: 21)
        
        print(r1)
        
        print(r2)
        
        demo4(num1: 7, num2: 14)
        
        demo5(num1: 7, num2: 14)
        
        demo6(num1: 7, num2: 14)
        
        demo7()
        
    }
    
    
    // 嵌套
    func demo7( ) {
    
        func test() {
        
            print("hello swift")
        
        }
        
        test()

    }
    
    
    // 没有返回值的3种类型
    func demo4(num1 a: Int, num2 b: Int) {
    
        print("\(a),\(b)")
    
    }
    
    func demo5(num1 a: Int, num2 b: Int) -> Void {
    
        print("\(a),\(b)")
    
    }
    
    func demo6(num1 a: Int, num2 b: Int) -> () {
    
        print("\(a),\(b)")
    
    }
    
    
    
    
    //  函数格式总结
    /*
    func 函数名(参数名: 参数类型,...) -> 返回值类型 {}
    */
    
    // 可以省略第一个参数
    func sum1(a: Int, num2 b: Int) -> Int {
    
        return a + b
    
    }
    
    
    // 有参数又返回至
    func sum(num1 a: Int, num2 b: Int) -> Int {
    
        return a + b
    
    }
    
    
    // 有两个参数无返回值，num1和num2是外部参数，外部参数是给调用者解释参数的意义
    func demo3(num1 a: Int, num2 b: Int) {
    
        print("\(a),\(b)")
    
    }
    
    
    func demo2(a: Int) {
    
        // 有参无返回值
        print(a)

    }
    
    
    func demo1() {
    
        // 无参无返回值
        print("wy")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

