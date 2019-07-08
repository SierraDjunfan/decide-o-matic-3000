//
//  TextFieldWithPaddingLol.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 2/10/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

class TextFieldWithPaddingLol: UITextField {
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
}
