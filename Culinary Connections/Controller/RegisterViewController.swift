//
//  registerViewController.swift
//  Culinary Connections
//
//  Created by Vahé Krikorian on 29/10/2023.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextFields()
    }
    
    private func setupTextFields() {
        let textFields: [UITextField] = [usernameTextField, emailTextField, passwordTextField, confirmPasswordTextField]
        
        for textField in textFields {
            if let placeholder = textField.placeholder {
                textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: CustomColors.steelGray])
            }
        }
    }
}
