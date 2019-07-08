//
//  WhenTheUserTapsAnywhereStopEditing.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 2/10/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func stopEditingOnTapSomewhere() {
        let tapper = UITapGestureRecognizer(target: self, action: #selector(goAwayKeyboard))
        self.view.addGestureRecognizer(tapper)
    }
    
    func goAwayKeyboard() {
        self.view.endEditing(true)
    }
}
