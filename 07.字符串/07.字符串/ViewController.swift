//
//  ViewController.swift
//  07.字符串
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
    
    
    // 字符提取
    func demo5() {
    
        let str = "hello Swift 哈哈"
        
        let r1 = str.substringFromIndex("way".endIndex.advancedBy(-1))
        
        print(r1)
    
        let r2 = str.substringFromIndex("wy".startIndex.advancedBy(2))
    
        print(r2)
        
        
        let startIndex = str.startIndex.advancedBy(2)
        
        let endIndex = str.endIndex.advancedBy(-3)
        
        // 根据范围提取字符串
        let r3 = str.substringWithRange(startIndex ..< endIndex)
        
        print(r3)
        
        
        // 可以使用NSString进行字符串的截取
        print((str as NSString).substringWithRange(NSMakeRange(2, 7)))
        
    }
    

    // 字符串格式化
    func demo4() {
    
        let h = 10
        
        let m = 3
        
        let s = 30
        
        // 10:03:30
        let timeStr = String(format: "%02d:%02d:%02d", arguments: [h,m,s])
    
        print(timeStr)
        
    
        let timeStr2 = String(format: "%02d:%02d:%02d", h, m, s)
        
        print(timeStr2)
        
        
    }
    
    
    // 字符串长度
    func demo3() {
    
        let str = "hello swift 哈哈"
    
        let charCount = str.characters.count
        
        print(charCount)
    
        // 字节数
        let charCount1 = str.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
        
        print(charCount1)
        
        // 统计utf8编码格式的字节数
        let charCount2 = str.utf8.count
        
        print(charCount2)
        
    }
    

    // 字符串拼接
    func demo2() {
    
        let str1 = "hello swift"
        
        let str2: String = "哈哈"
    
        // +
        let result1 = str1 + str2
        
        print(result1)
        
        print("-------")
        
        print("\(str1)\(str2)")
        
        let str3: String? = "你好"
        
        // 可选类型的拼接需要判断
        let result2 = (str3 ?? "") + str1
        
        print(result2)
        
        print("-------")
        
        print("\(str3)\(str1)")
        
        let num = 100
        
        // 类型不同要装换
        let result3 = str1 + String(num) + "分"
        
        print(result3)
        
        // \()不需要类型转换
        print("\(str1)\(num)分")
    }
    
    
    // 字符串遍历
    func demo1() {
    
        let str = "hello swift"
        
        let str1: NSString = "哈哈"
    
        // 遍历
        for y in str.characters {
        
            print(y)
        
        }
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

