// SymbolSubsitution.swift
//
// This source file is part of the Swift Math open source project.
//
// Copyright (c) 2022 Logan Richards and the Swift Math project authors.
// Licensed under MIT
//
// See https://github.com/Logarithm-1/Cryptography/blob/main/LICENSE for license information

import Foundation

/// Cipher Text is image names
public class SymbolSubsitution : Subsitution {
    let imagePostName: String
    
    public init?(imagePostName: String, alphabet: [String], caseSensitive: Bool = false, memorizeCase: Bool = false, addSpace: Bool = true) {
        self.imagePostName = imagePostName
        var key: [String : String] = [:]
        
        for a in alphabet {
            if(a != " ") {
                key[a] = imagePostName + "." + a
            } else {
                key[a] = imagePostName + ".space"
            }
        }
        
        if(addSpace) {
            key[" "] = "space"
        }
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: .Remove, createNGroups: nil, seperator: " ")
    }
    
    public func encrypt(_ plaintext: String) -> [String] {
        let cipherText: String = super.encrypt(plaintext)
        var arrCipherText: [String] = cipherText.components(separatedBy: self.seperator)
        
        let last: String = arrCipherText.removeLast()
        if(last != "") {
            arrCipherText.append(last)
        }
        
        return arrCipherText
    }
}
