//
//  ViewController.swift
//  03.常量和变量
//
//  Created by 浅爱 on 16/3/5.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        demo1()
        
    }

    
    func demo1() {
    
        let a = 10
        
        var b = 20
        
        b = 30
        
        print(b)
        
        // 显示指导类型
        let c: Double = 7.727181034890
        
        let result = Double(a) + c
        
        print(result)
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

