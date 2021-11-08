//
//  ViewController.swift
//  CollectionTabCreativeApp
//
//  Created by DANIEL VEGA on 11/4/21.
//

import UIKit

public class StatVar{
   
    static var userArray = [User]()
    static var heirname = ""
    static var heirpass = ""
    
    static var imageArray = [UIImage]()
    static var imageIndex = 0
}

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameTextField.delegate = self
        self.passwordTextField.delegate = self
    }

    @IBAction func createUserAction(_ sender: Any) {
        var usernameChecker = false
        if checkTextField(tf: usernameTextField) && checkTextField(tf: passwordTextField) {
            for i in StatVar.userArray {
                if i.userName == usernameTextField.text {
                    let alert = UIAlertController(title: "Error", message: "Username already used", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Revisit", style: .cancel, handler: nil)
                    alert.addAction(action)
                    self.present(alert, animated: true)
                    usernameChecker = true
                }
                
            }
            if usernameChecker {
                
            }
            else{
            StatVar.userArray.append(User(u: usernameTextField.text!, p: passwordTextField.text!))
                StatVar.heirname = usernameTextField.text!
                StatVar.heirpass = passwordTextField.text!
                
            }
        }
        else{
            let alert = UIAlertController(title: "Error", message: "Username of Password invalid", preferredStyle: .alert)
            let action = UIAlertAction(title: "Revisit", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true)
        }
        for i in StatVar.userArray {
            print(i.toString())
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
//        if checkTextField(tf: usernameTextField) && checkTextField(tf: passwordTextField) {
//            if textField == passwordTextField {
//
//            }
//        }
        return true
    }
    
    func checkTextField(tf: UITextField) -> Bool{
        if tf.text == "" {
           return false
        }
        else {
            return true
        }
    }

}

