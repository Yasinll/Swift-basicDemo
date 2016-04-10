//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let v = UIView(frame: CGRect(x: 80, y: 80, width: 80, height: 80))

// 类方法调用
v.backgroundColor = UIColor.redColor()

// 枚举：枚举名.枚举值
let button = UIButton(type: .ContactAdd)

button.backgroundColor = UIColor.blueColor()

v.addSubview(button)
