//
//  PickerVC.swift
//  UserDefaultsLab
//
//  Created by Christian Hurtado on 1/13/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit

class PickerVC: UIViewController {
    
    @IBOutlet weak var signPicker: UIPickerView!
    
    var name = ""
    var picked = ""
    
    private var dates = ["Aries",
                         "Taurus",
                         "Gemini",
                         "Cancer",
                         "Leo",
                         "Virgo",
                         "Libra",
                         "Scorpio",
                         "Sagittarius",
                         "Capricorn",
                         "Aquarius",
                         "Pisces"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Hey \(name)!"
        signPicker.dataSource = self
        signPicker.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailedSignViewController = segue.destination as? DetailedSignViewController
        detailedSignViewController?.picked = picked
    }
    
}

extension PickerVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dates.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(dates[row])
        picked = dates[row]
    }
}

extension PickerVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dates[row]
    }
    

}
