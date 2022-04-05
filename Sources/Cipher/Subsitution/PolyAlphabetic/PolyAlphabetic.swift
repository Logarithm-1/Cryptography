//
//  File.swift
//  
//
//  Created by Logan Richards on 12/12/21.
//

import Foundation

// key -> ["A_1" : "B_1", "A_2]
// encrypt -> value = A, id = 1, key = 

/// A substitution cipher where two or more cipher alphabet is invloved.
public class PolyAlphabetic : Cipher {
    internal var _caseSensitive: Bool = false
    internal var _memorizeCase: Bool = false
    internal var _unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore
    internal var _createNGroups: Int? = nil
    internal var _seperator: String = ""
    
    public var caseSensitive: Bool {
        get {
            return _caseSensitive
        }
        set(newValue) {
            _caseSensitive = newValue
        }
    }
    public var memorizeCase: Bool {
        get {
            return _memorizeCase
        }
        set(newValue) {
            _memorizeCase = newValue
        }
    }
    public var unknownSymbolHandling: UnknownSymbolHandlingMode {
        get {
            return _unknownSymbolHandling
        }
        set(newValue) {
            _unknownSymbolHandling = newValue
        }
    }
    public var createNGroups: Int? {
        get {
            return _createNGroups
        }
        set(newValue) {
            _createNGroups = newValue
        }
    }
    
    public var seperator: String {
        get {
            return _seperator
        }
        set(newValue) {
            _seperator = newValue
        }
    }
    
    public let replaceUnknownSymbolWith: String = "⍰"

    public var key: [String : Subsitution]
    
    public init?(key: [String : Subsitution], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        self.key = key
        
        for value in key {            
            value.value.caseSensitive = caseSensitive
            value.value.memorizeCase = memorizeCase
            value.value.unknownSymbolHandling = .Remove
            value.value.createNGroups = nil
            value.value.seperator = ""
        }
        
        self.caseSensitive = caseSensitive
        self.memorizeCase = memorizeCase
        self.unknownSymbolHandling = unknownSymbolHandling
        self.createNGroups = createNGroups
        self.seperator = seperator
    }
    
    //plaintext: "HELLO WORLD"
    //plaintext+id: "H_k E_e L_y L_k O_e W_y O_k R_e L_y D_k"
    public func encrypt(_ plaintext: String) -> String {
        var encryptedMessage: String = ""
        var arrPlaintext: [Character] = Array(caseSensitive ? plaintext : plaintext.uppercased())
        
        while(0 < arrPlaintext.count) {
            if let str = group(string: arrPlaintext, by: 3) {
                let splitedStr = str.components(separatedBy: "_")
                
                if(splitedStr.count == 2) {
                    let value = splitedStr[0]
                    let id = splitedStr[1]
                    if let cipher = key[id] {
                        let encryptedValue = cipher.encrypt(value)
                        if(encryptedValue != "") {
                            encryptedMessage += encryptedValue + seperator
                            removeFirst(arr: &arrPlaintext, by: 3)
                            continue
                        }
                    }
                }
            }
            
            if(unknownSymbolHandling == .Ignore && String(arrPlaintext[0]) != seperator) {
                encryptedMessage += String(arrPlaintext[0])
                removeFirst(arr: &arrPlaintext, by: 1)
            } else if(unknownSymbolHandling == .Replace) {
                encryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrPlaintext, by: 1)
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrPlaintext, by: 1)
            }
            
        }
        
        
        return encryptedMessage
    }
    
    public func decrypt(_ ciphertext: String) -> String {
        var decryptedMessage: String = ""
        var arrCiphertext: [Character] = Array(caseSensitive ? ciphertext : ciphertext.uppercased())
        
        while(0 < arrCiphertext.count) {
            if let str = group(string: arrCiphertext, by: 3) {
                let splitedStr = str.components(separatedBy: "_")
                
                if(splitedStr.count == 2) {
                    let value = splitedStr[0]
                    let id = splitedStr[1]
                    if let cipher = key[id] {
                        let decryptedValue = cipher.decrypt(value)
                        if(decryptedValue != "") {
                            decryptedMessage += decryptedValue + seperator
                            removeFirst(arr: &arrCiphertext, by: 3)
                            continue
                        }
                    }
                }
            }
            
            if(unknownSymbolHandling == .Ignore && String(arrCiphertext[0]) != seperator) {
                decryptedMessage += String(arrCiphertext[0])
                removeFirst(arr: &arrCiphertext, by: 1)
            } else if(unknownSymbolHandling == .Replace) {
                decryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrCiphertext, by: 1)
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrCiphertext, by: 1)
            }
            
        }
        
        
        return decryptedMessage
    }
    
    public func randomKey() {
        
    }
    
    private func group(string arr: [Character], by n: Int) -> String? {
        var str: String = ""
        
        for i in 0..<n {
            if(i < arr.count) {
                str += String(arr[i])
            }
        }
        
        if(str.count == n) {
            return str
        }
        
        return nil
    }
    
    private func removeFirst(arr: inout [Character], by n: Int) {
        for _ in 0..<n {
            if(arr.count > 0) {
                arr.removeFirst()
            }
        }
    }
    
}
