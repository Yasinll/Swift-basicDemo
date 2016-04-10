//
//  ViewController.swift
//  02.项目体验
//
//  Created by 浅爱 on 16/3/5.
//  Copyright © 2016年 y. All rights reserved.
//


//@UIApplicationMain 程序的入口

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let v = UIView(frame: CGRect(x: 80, y: 80, width: 80, height: 80))
        
        v.backgroundColor = UIColor.redColor()
        
        view.addSubview(v)
        
        
        let btn = UIButton(type: .ContactAdd)
        
        btn.backgroundColor = UIColor.blueColor()
        
        btn.addTarget(self, action: "btnClick", forControlEvents:.TouchUpInside )
        
        v.addSubview(btn)
        
    }

    func btnClick() {
    
        print("haha")
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

