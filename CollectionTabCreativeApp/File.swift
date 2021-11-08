//
//  File.swift
//  CollectionTabCreativeApp
//
//  Created by DANIEL VEGA on 11/4/21.
//

import Foundation

public class User{
    var userName: String
    var password: String
    
    init(u: String, p: String) {
        userName = u
        password = p
    }
    
    func toString() -> String {
        var string = "username: \(userName), password: \(password)"
        return string
    }
    
    
}
