//
//  DetailViewController.swift
//  tsui
//
//  Created by Tsui on 16/1/22.
//  Copyright © 2016年 TsuiX. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    //个人数据模型
    var person: Person?
    
    //定义闭包属性
    var didSaveCallBack: (() -> ())?

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    //文本变化
    @IBAction func textChanged() {
        //如果两个输入框都有内容,才可以保存
        navigationItem.rightBarButtonItem?.enabled = nameTextField.hasText() && ageTextField.hasText()
        
        
    }
    //保存
    @IBAction func save(sender: AnyObject) {
        person?.name = nameTextField.text
        // 第一个 ! 保证字符串一定有内容
        // 第二个 ! 保证一定能转换成整数
        person?.age = Int(ageTextField.text!) ?? 0
        
        didSaveCallBack?()
        //关闭控制器
        navigationController?.popViewControllerAnimated(true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        nameTextField.text = person?.name
        ageTextField.text = "\(person?.age ?? 0)"
        textChanged()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
