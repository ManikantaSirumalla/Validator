//
//  validator.swift
//  Validator
//
//  Created by Manikanta Sirumalla on 26/08/23.
//

import Foundation

public struct Validator {
   public static func isValidEmail(_ email: String) -> Bool {
        // Regular expression pattern for a valid email address
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    public static func sayHello() {
        print("Hello, Mr.Hulk")
    }
}
