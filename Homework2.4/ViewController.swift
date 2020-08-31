//
//  ViewController.swift
//  Homework2.4
//
//  Created by Andrey Markov on 2020-08-31.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonPressed() {
        let validLogin:String = "user"
        let validPassword:String = "password"
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if  login.text == validLogin && password.text == validPassword{
                       performSegue(withIdentifier: "loginSegue", sender: nil)   }
            
        }
    }
    
}

