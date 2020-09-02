//
//  ViewController.swift
//  Homework2.4
//
//  Created by Andrey Markov on 2020-08-31.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    private let user = User.getUserData()
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! MainViewController
        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
        let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
        welcomeVC.user = user
        aboutUserVC.user = user
    }
    @IBAction func buttonPressed() {
        guard
                       login.text == user.name,
                       password.text == user.password
                   else {
                       showAlert(title: "Invalid login or password",
                       message: "Please, enter correct login and password",
                       textField: login)
                       return
               }
               
               performSegue(withIdentifier: "loginSegue", sender: nil)
    }
    
}
// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: Text Field Delegate
extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == login {
            textField.resignFirstResponder()
            password.becomeFirstResponder()
        } else {
            buttonPressed()
        }
        return true
    }
}


