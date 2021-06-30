//
//  ViewController.swift
//  SuperSenha
//
//  Created by Luiz Brandão on 30/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    executed before the view launches
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsVC = segue.destination as! PasswordsViewController
        
//        make sure that user input some data... if its okay, add to numbersOfPasswords
        if let numbersOfPasswords = Int(tfTotalPasswords.text!) {
            passwordsVC.numberOfPasswords = numbersOfPasswords
        }
        if let numbersOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordsVC.numberOfCharacters = numbersOfCharacters
        }
        passwordsVC.useLetters =  swLetters.isOn
        passwordsVC.useNumbers = swNumbers.isOn
        passwordsVC.useCapitalLetters = swCapitalLetters.isOn
        passwordsVC.useSpecialCharacters = swSpecialCharacters.isOn
        
//        End the edition on text field
        view.endEditing(true)

    }

}

