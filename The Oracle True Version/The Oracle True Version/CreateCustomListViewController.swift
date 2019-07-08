//
//  CreateCustomListViewController.swift
//  The Oracle True Version
//
//  Created by Sara Hayward on 17/09/2016.
//  Copyright © 2016 Devsword. All rights reserved.
//

import Foundation
import UIKit

struct Option {
    let text: String
}

class CreateCustomListViewController : BaseViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    @IBOutlet private weak var _textField: UITextField!
    
    @IBOutlet private weak var _tableView: UITableView!
    
    @IBOutlet private weak var _chooseButton: UIButton!
    
    private var _options = [Option]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _tableView.tableFooterView = UIView()
        enableOrDisableChooseButton()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "chooseSegue" {
            (segue.destination as! ChooseFromListOfOptionsViewController)
            .options = _options
        }
    }
    
    private func getCurrentOption() -> Option? {
        if _textField.text ?? "" != "" {
            let option = Option(text: _textField.text!)
            return option
        }
        
        return nil
        
    }
    
    private func enableOrDisableChooseButton() {
        
        if _options.count >= 2 {
            
            _chooseButton.isHidden = false
            
        } else {
            
            _chooseButton.isHidden = true
            
        }
    }
    
    @IBAction func addOption() {
        
        if let newOption = getCurrentOption() {
            
            _tableView.beginUpdates()
        
            _options.insert(newOption, at: 0)
            
            let indexPath = IndexPath(row: 0, section: 0)
            
            _tableView.insertRows(at: [indexPath], with: .fade)
            
            _tableView.endUpdates()
            
            enableOrDisableChooseButton()
            
        }
        
        _textField.text = nil
        
    }
    
    // MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as! CellCell
        
        let option = _options[indexPath.row]
        cell.bind(option: option)
        
        return cell
        
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let deleteAction = UITableViewRowAction(style: .destructive, title: "DELETE", handler: {
                self.deleteOptionAtIndexPath($1)
            })
        deleteAction.backgroundColor = .clear
        return [deleteAction]
    }
    
    fileprivate func deleteOptionAtIndexPath(_ indexPath: IndexPath) {
        _tableView.beginUpdates()
        _options.remove(at: indexPath.row)
        _tableView.deleteRows(at: [indexPath], with: .automatic)
        _tableView.endUpdates()
        enableOrDisableChooseButton()
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        addOption()
        return true
    }
}
