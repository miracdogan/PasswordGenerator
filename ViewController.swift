//
//  ViewController.swift
//  PasswordGenerator
//
//  Created by Miraç Doğan on 7.02.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var CreateButton: UIButton!
    @IBOutlet var CopyButton: UIButton!
    @IBOutlet var textView: UITextField!
    @IBOutlet var TitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1.00)
        var buttonColor = UIColor(red: 0.71, green: 0.88, blue: 0.69, alpha: 1.00)
        
        textView.isUserInteractionEnabled = false
        TitleLabel.textAlignment = .center
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
    
    @IBAction func onChangeTextButton(_ CreateButton: UIButton)
    {
        textView.textAlignment = .center
        textView.text = generateRandomPassword(of: 20)
        UIPasteboard.general.string = textView.text
        
    }

//    @IBAction func copyPassword(_ CopyButton: UIButton)
//    {
//        UIPasteboard.general.string = textView.text
//    }
    
    
}

