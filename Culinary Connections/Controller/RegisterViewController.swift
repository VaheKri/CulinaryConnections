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
    
    @IBOutlet weak var passwordVisibilityButton: UIButton!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextFieldsDesign()
        setupTextFieldsManager()
        setupButtonsDesign()
    }
    
    private func setupButtonsDesign() {
        registerButton.layer.cornerRadius = 28.5
        
        loginButton.layer.cornerRadius = 28.5
        loginButton.layer.borderWidth = 3
        loginButton.layer.borderColor = CustomColors.deepSkyBlue.cgColor
    }
    
    @IBAction func goToLoginScreen(_ sender: Any) {
       
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "login") as? LoginViewController {
                self.navigationController?  .pushViewController(vc, animated: true)
            }
    }
    

    @IBAction func togglePasswordVisibility(_ sender: UIButton) {
        passwordTextField.isSecureTextEntry.toggle()
        
        let buttonImage = passwordTextField.isSecureTextEntry ? UIImage(systemName: "eye") : UIImage(systemName: "eye.slash")
        passwordVisibilityButton.setImage(buttonImage, for: .normal)
    }
    
    private func setupTextFieldsDesign() {
        
        let textFields: [UITextField: String] = [
            usernameTextField: "userIcon.png",
            emailTextField: "emailIcon.png",
            passwordTextField: "passwordIcon.png"
        ]
        
        for (textField, imageName) in textFields {
            textField.layer.cornerRadius = 17

            let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 30))
            let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 30, height: 30))
            let image = UIImage(named: imageName)

            imageView.image = image
            leftPadding.addSubview(imageView)

            textField.leftView = leftPadding
            textField.leftViewMode = .always

            let rightPadding = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
            textField.rightView = rightPadding
            textField.rightViewMode = .always

            if let placeholder = textField.placeholder {
                textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: CustomColors.steelGray])
            }
        }
    }

    
    private func setupTextFieldsManager() {
        usernameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func hideKeyboard() {
        usernameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
