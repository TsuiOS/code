//
//  ViewController.swift
//  tsui
//
//  Created by Tsui on 16/1/22.
//  Copyright © 2016年 TsuiX. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }


}

// MARk: - 拼接个人信息
extension ViewController {
    
    private func loadData() {
    
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            //模拟耗时操作
            print("耗时操作")
            
            //1.拼接个人信息数组
            var dataList = [Person]()
            
            //2.循环生成模拟数据
            for i in 0..<50 {
                let name = "Hsu \(i)"
                //生成一个0 - 19的随机数
                let age = random() % 20
                
                let dict: [String: AnyObject] = ["name": name, "age": age]
                //字典转模型,追加到数组
                dataList.append(Person(dict: dict))
            
            }
            //测试数据
            print(dataList)
            
            dispatch_async(dispatch_get_main_queue()) { () -> Void in
                //完成回调
                print("完成回调")
            }
        }
    }

}

