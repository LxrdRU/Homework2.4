//
//  AboutMeViewController.swift
//  Homework2.4
//
//  Created by Andrey Markov on 2020-09-02.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.name
    }
}
