//
//  DetailViewController.swift
//  tsui
//
//  Created by Tsui on 16/1/22.
//  Copyright © 2016年 TsuiX. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    //文本变化
    @IBAction func textChanged(sender: AnyObject) {
        //如果两个输入框都有内容,才可以保存
        navigationItem.rightBarButtonItem?.enabled = nameTextField.hasText() && ageTextField.hasText()
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //保存
    @IBAction func save(sender: AnyObject) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
