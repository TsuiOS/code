//
//  PersonCell.swift
//  tsui
//
//  Created by Tsui on 16/1/22.
//  Copyright © 2016年 TsuiX. All rights reserved.
//

import UIKit

//自定义cell
class PersonCell: UITableViewCell {
    
    var person: Person? {
        
        didSet {
            //当Person 模型被设置值完成后,执行的代码
            nameLable.text = person?.name
            ageLable.text = "\(person?.age ?? 0)"
        
        }
    }

    @IBOutlet weak var nameLable: UILabel!

    @IBOutlet weak var ageLable: UILabel!
}
