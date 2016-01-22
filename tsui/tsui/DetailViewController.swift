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

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    //文本变化
    @IBAction func textChanged() {
        //如果两个输入框都有内容,才可以保存
        navigationItem.rightBarButtonItem?.enabled = nameTextField.hasText() && ageTextField.hasText()
        
        
    }
    //保存
    @IBAction func save(sender: AnyObject) {
        
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
