//
//  Person.swift
//  tsui
//
//  Created by Tsui on 16/1/22.
//  Copyright © 2016年 TsuiX. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    var age: Int = 0
    
    init(dict: [String: AnyObject]) {
        super.init()
        //字典转模型
        setValuesForKeysWithDictionary(dict)
    
    }
    
    override var description: String {
    
        let keys = ["name", "age"]
        //模型转字典
        return "\(dictionaryWithValuesForKeys(keys))"
    
    }
    

}
