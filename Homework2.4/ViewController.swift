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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSegue"{
            guard let mainVC = segue.destination as? MainViewController else {return}
            
        }
    }
}

