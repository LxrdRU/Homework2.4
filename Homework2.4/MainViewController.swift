//
//  MainViewController.swift
//  Homework2.4
//
//  Created by Andrey Markov on 2020-09-01.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
    
     var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(user.name)!"
    }


}
