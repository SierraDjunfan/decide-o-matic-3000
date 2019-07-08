//
//  UILabelCrossFadeExtension.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 26/09/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    func fadeTo(newText: String, _ sizeToFit: Bool = false) {
        
        UIView.animate(withDuration: 0.25, animations: {
                self.layer.opacity = 0.0
            }) { completed in
                if completed {
                    self.text = newText
                    if sizeToFit {
                        self.sizeToFit()
                    }
                    UIView.animate(withDuration: 0.25, animations: {
                        if sizeToFit {
                            self.sizeToFit()
                        }
                        self.layer.opacity = 1.0
                    })
                }
            }
        
    }
    
}
