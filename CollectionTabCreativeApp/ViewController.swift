//
//  ViewController.swift
//  CollectionTabCreativeApp
//
//  Created by DANIEL VEGA on 11/4/21.
//

import UIKit

public class StatVar{
   
    static var userArray = [User]()
    
}

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }

    @IBAction func createUserAction(_ sender: Any) {
        if checkTextField(tf: usernameTextField) && checkTextField(tf: passwordTextField) {
            StatVar.userArray.append(User(u: usernameTextField.text!, p: passwordTextField.text!))
        }
        else{
            let alert = UIAlertController(title: "Error", message: "Username of Password invalid", preferredStyle: .alert)
            let action = UIAlertAction(title: "Revisit", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true)
        }
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

