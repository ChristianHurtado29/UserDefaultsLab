//
//  DetailedSignViewController.swift
//  UserDefaultsLab
//
//  Created by Christian Hurtado on 1/13/20.
//  Copyright © 2020 Christian Hurtado. All rights reserved.
//

import UIKit

class DetailedSignViewController: UIViewController {

    @IBOutlet weak var signName: UILabel!
    @IBOutlet weak var signHoro: UITextView!
    
    var sign: Signs?
    var picked: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signName.text = sign?.sunsign
        signHoro.text = sign?.horoscope
        
        print(picked)
        
        let signUrl = "https://sandipbgt.com/theastrologer/api/horoscope/\(picked)/today"
        
//        HoroscopeAPIClient.getSigns(with: signUrl) { (result) in
//            switch result{
//            case .failure( _):
//                fatalError("antonio got it wrong")
//            case .success(let _):
                
        }
        }
