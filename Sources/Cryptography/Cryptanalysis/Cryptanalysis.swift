//
//  File.swift
//  
//
//  Created by Logan Richards on 12/18/21.
//

import Foundation


public protocol Cryptanalysis {
    /// Analyze the `cipherText`
    /// - Parameter cipherText: An (supposably) encypted message.
    /// - Returns The final analyze of the `cipherText`
    func analyze(_ cipherText: String) -> String
}


