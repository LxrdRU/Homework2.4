//
//  UserData.swift
//  Homework2.4
//
//  Created by Andrey Markov on 2020-09-01.
//  Copyright © 2020 Andrey Markov. All rights reserved.
//

import Foundation
struct User {
    let name:String
    let password:String
    
    static func getUserData() -> User{
        User(name:"User",password: "password")
    }
}
