//
//  ViewController.swift
//  06.循环
//
//  Created by 浅爱 on 16/3/6.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        demo2()
    }
    
    
    func demo2() {
    
        var index = 3
        
        while index > 0 {
        
            index--
            
            print(index)
        
        }
    
        print("--------")
    
        
        for _ in 0 ... 3 {
        
            print("哈哈")
        
        }
    }
    

    func demo1() {
    
        for i in 0 ..< 3 {
        
            print(i)
        
        }
        
        print("-----")
        
        for i in 0 ... 3 {
        
            print(i)
        
        }
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

