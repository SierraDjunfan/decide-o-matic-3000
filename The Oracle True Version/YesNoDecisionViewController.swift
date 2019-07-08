//
//  YesNoDecisionViewController.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 20/09/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

class YesNoDecisionViewController: BaseViewController {
    
    @IBOutlet private weak var _label: UILabel!
    
    @IBOutlet private weak var reRollButton: UIButton!
    
    var options = ["yes", "no"]
    
    @IBAction func reRoll() {
        
        chooseOption()
        
    }
    
    func chooseOption() {
        
        _label.fadeTo(newText: options[Int(arc4random_uniform(UInt32(options.count)))])

        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _label.text = ""
        chooseOption()
        }
}
