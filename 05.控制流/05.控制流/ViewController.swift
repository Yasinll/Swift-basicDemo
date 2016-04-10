//
//  ViewController.swift
//  05.控制流
//
//  Created by 浅爱 on 16/3/5.
//  Copyright © 2016年 y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo5()
    }
    
    func demo5() {
        
        let scoreStr = "优"
        
        switch scoreStr {
            
            case "优":
            
                let name = "张三"
            
                print(name)
            
                print("优秀")
            
                break
            
            
            case "良":
            
                print("良好")
            
            case "中":
            
                print("中等")
            
            case "差":
            
                print("差")
            
            default:
            
                print("未知")
            
        }
        
        print("-----")
        
        let score = 90
        
        switch score {
        
        case _ where score > 90:
            
            print("优秀")
        
        case _ where score > 80:
            
            print("你好")
        
            // 代码贯穿，但是后面不能定义常量或者变量，case 还可以判断多个值
            fallthrough
            
        case 10,20:
            
            print("哈哈")
            
            default:
            
            print("未知")
        
        }
        
    }
    
    
    func demo4() {
        
        let url = NSURL(string: "http://www.baidu.com哈哈")
        
        if let u = url {
            
            if u.host == "http://www.baidu.com" {
                
                // 再次使用u ,u一定存在
                let request = NSURLRequest(URL: u)
                
                print(request)
                
            }
            
        }
        
        // where
        /**
        可选类型条件的判断，使用if let 后面跟上where语句
        where 条件后面没有智能提示
        */
        
        if let u = url where u.host == "http://www.baidu.com" {
            
            let requset = NSURLRequest(URL: u)
            
            print(requset)
            
        }
        
        let name: String? = "张三"
        
        let age: Int? = 18
        
        if let n = name, a = age where n == "张三" && a >= 20 {
            
            print("是你找的人")
            
        }else {
            
            print("不是你要找的人")
            
        }
        
    }
    
    
    func demo3() {
        
        let url = NSURL(string: "http://www.baidu.com")
        
        if let u = url {
            
            // 这里使用的u是一定存在的
            let request = NSURLRequest(URL: u)
            
            print(request)
            
        }
        
        guard let u = url else {
                
                print("url为nil")
                
                return
        }
        
        let requset = NSURLRequest(URL: u)
        
        print(requset)
        
        // 下面执行大片逻辑
        
        
    }
    
    //  可选类型的判断
    /*
    -unexpectedly found nil while unwrapping an Optional value
    - 对一个可选类型的值为nil，强制解包报错
    */
    func demo2() {
        
        let url = NSURL(string: "http://www.baidu.com")
        
        if url != nil {
            
            let request = NSURLRequest(URL: url!)
            
            print(request)
            
        }
        
        // if let 判断
        if let u = url {
            
            let request = NSURLRequest(URL: u)
            
            print(request)
            
        }
        
        // 多个可选项类型的判断
        let name: String? = "张三"
        
        let age: Int? = 20
        
        if let n = name, a = age {
            
            print("\(n) == \(a)")
            
        }
        
    }
    
    
    
    func demo1() {
        
        let a = 10
        
        if a > 5 {
            
            print("a大于5")
            
        }
        
    }
    
    
}

