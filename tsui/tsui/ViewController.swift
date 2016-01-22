//
//  ViewController.swift
//  tsui
//
//  Created by Tsui on 16/1/22.
//  Copyright © 2016年 TsuiX. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    //个人信息数组
    private var personInfo: [Person]?
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData { (array) -> () in
            //接收回调参数
            self.personInfo = array
            //刷新表格
            self.tableView.reloadData()
        }
    }


}
// MARK: - 数据源方法
extension ViewController {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //如果personInfo 数组为nil 直接返回0
        return personInfo?.count ?? 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = personInfo![indexPath.row].name
        return cell
    }

}

// MARk: - 拼接个人信息
extension ViewController {
    
    private func loadData(completion: (array: [Person]) -> ()) {
    
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
//            print(dataList)
            
            dispatch_async(dispatch_get_main_queue()) { () -> Void in
                //完成回调
                print("完成回调")
                completion(array: dataList)
            }
        }
    }

}

