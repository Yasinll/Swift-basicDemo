//
//  ViewController.swift
//  04.可选项类型
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
    
        let a: Int? = 10
        
        let b = 20
        
        if a != nil {
        
            let result = a! + b
            
            print(result)
        
        }
        
        let result = (a ?? 0) + b
        
        print(result)
        
        
        let c: Int? = nil
        
        print(c)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

