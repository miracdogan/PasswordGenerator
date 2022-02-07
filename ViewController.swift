//
//  ViewController.swift
//  PasswordGenerator
//
//  Created by Miraç Doğan on 7.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var CreateButton: UIButton!
    @IBOutlet var textView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var backgroundColor = UIColor(red: 0.29, green: 0.42, blue: 0.46, alpha: 1.00)
        var buttonColor = UIColor(red: 0.82, green: 0.95, blue: 0.97, alpha: 1.00)
        
        textView.isUserInteractionEnabled = false
        self.view.backgroundColor = backgroundColor
        CreateButton.backgroundColor = buttonColor
        CreateButton.layer.cornerRadius = 10
        
    }

    func generateRandomPassword(of length: Int) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        var password = ""
        for _ in 0 ..< length {
            password.append(letters.randomElement()!)
        }
        return password
        
    }
    
    @IBAction func onChangeTextButton(_ CreateButton: UIButton){
        textView.textAlignment = .center
        textView.text = generateRandomPassword(of: 20)
    }

}

