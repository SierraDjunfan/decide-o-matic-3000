//
//  CellCell.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 17/09/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

class CellCell : UITableViewCell {
    
    @IBOutlet private weak var _label: UILabel!
    
    func bind(option: Option) {
        
        _label.text = option.text
        
    }
    
}
