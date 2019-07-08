//
//  BaseViewController.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 26/09/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

class BaseViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "back1")
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "back1mask")
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.tintColor = UIColor.white
        
        stopEditingOnTapSomewhere()
    }
}
