//
//  Magic8BallDecisionViewController.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 20/09/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

class Magic8BallDecisionViewController: BaseViewController {
    
    @IBOutlet private weak var label: UILabel!
    
    var options = ["How could I possibly know that?", "Hell nah", "In your dreams", "Most likely", "There is a 20% chance", "Absolutely no way in a million years", "With 100% certainty", "The citizens have voted yes", "The citizens have voted no", "Sadly, no", "No one REALLY cares about the answer to that question", "Probs", "Your local pastor thinks so", "Scientists agree that the answer is yes", "Yaaaassssss", "Nein"]
    
    @IBAction func reRoll() {
        
        chooseOption()
        
    }
    
    func chooseOption() {
        
        label.numberOfLines = 0
        label.fadeTo(newText: options[Int(arc4random_uniform(UInt32(options.count)))], true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = ""
        chooseOption()
    }
}
