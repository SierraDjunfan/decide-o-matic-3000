//
//  ChooseFromListOfOptionsViewController.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 18/09/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

class ChooseFromListOfOptionsViewController: BaseViewController {
    
    var options: [Option]!
    
    @IBOutlet private weak var _label: UILabel!
    
    @IBAction func onRerollButtonPressed() {
        
        roll()
        
    }
    
    func roll() {
        
        guard let newText = options
            .sorted(by: { _,_ in arc4random() < arc4random() })
            .first?
            .text else {
                return
        }
        
        _label.fadeTo(newText: newText, true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _label.text = ""
        roll()
       
    }
    
}
