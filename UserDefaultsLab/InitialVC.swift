//
//  ViewController.swift
//  UserDefaultsLab
//
//  Created by Christian Hurtado on 1/13/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit

class InitialVC: UIViewController {

    @IBOutlet weak var enterNameLabel: UILabel!
    @IBOutlet weak var nameEntered: UITextField!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterNameLabel.text = "Please enter your name! :"
        
        nameEntered.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pickerVC = segue.destination as? PickerVC
        pickerVC?.name = name
    }
}

extension InitialVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        name = nameEntered.text ?? ""
        nameEntered.resignFirstResponder()
        return true
    }
}
