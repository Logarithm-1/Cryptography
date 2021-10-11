//
//  Subsitution.swift
//  
//
//  Created by Logan Richards on 6/10/21.
//

import Foundation

//TODO: Allow for encrypting and decrypting a single symbol (ie. incrypt "th" to "ç" or something)
//We can take the largest key string (for instance [a, b, c, d, e, th] 2 would be the largest
//Split plaintext into the largest count (2)
//Then decrease (2 to 1)
//Any left would be the unknown symbols

public class Subsitution: Cipher {
    internal var _caseSensitive = false
    internal var _memorizeCase: Bool = false
    internal var _unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore
    internal var _createNGroups: Int? = nil
        
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

    public let replaceUnknownSymbolWith: String = "⍰"
    
    public var key: [String : String]
    internal var inverseKey: [String : String]
    
    private var maxKeyValue: Int {
        get {
            var max = 0
            
            for k in key {
                if(k.key.count > max) {
                    max = k.key.count
                }
            }
            
            return max
        }
    }
    
    private var maxInverseKeyValue: Int {
        get {
            var max = 0
            
            for k in inverseKey {
                if(k.key.count > max) {
                    max = k.key.count
                }
            }
            
            return max
        }
    }
    
    public init(key: [String : String], caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        self.key = key
        self.inverseKey = [:]
        self.createInverseKey()
        
        self.caseSensitive = caseSensitive
        self.memorizeCase = memorizeCase
        self.unknownSymbolHandling = unknownSymbolHandling
        self.createNGroups = createNGroups
    }
    
    public convenience init(key: [String : String]) {
        self.init(key: key, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
    
    public func encrypt(_ plaintext: String) throws -> String {
        try validateKey()
        
        var encryptedMessage: String = ""
        var arrPlaintext: [Character] = Array(plaintext)
        
        var grouping = maxKeyValue
        
        while(0 < arrPlaintext.count) {
            if let str = group(string: arrPlaintext, by: grouping) {
                if let encryptedStr = key[str] {
                    encryptedMessage += encryptedStr
                    removeFirst(arr: &arrPlaintext, by: grouping)
                    
                    grouping = maxKeyValue
                    continue
                }
            }
            
            if(grouping > 0) {
                grouping -= 1
            } else if(unknownSymbolHandling == .Ignore) {
                encryptedMessage += String(arrPlaintext[0])
                removeFirst(arr: &arrPlaintext, by: 1)
                grouping = 2
            } else if(unknownSymbolHandling == .Replace) {
                encryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrPlaintext, by: 1)
                grouping = 2
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrPlaintext, by: 1)
                grouping = 2
            }
        }
        
        return reformat(encryptedMessage)
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
            arr.removeFirst()
        }
    }
    
    public func decrypt(_ ciphertext: String) throws -> String {
        try validateKey()
        
        var decryptedMessage: String = ""
        var arrCiphertext: [Character] = Array(ciphertext)
        
        var grouping = maxInverseKeyValue
        
        while(0 < arrCiphertext.count) {
            if let str = group(string: arrCiphertext, by: grouping) {
                if let decryptedStr = inverseKey[str] {
                    decryptedMessage += decryptedStr
                    removeFirst(arr: &arrCiphertext, by: grouping)
                    
                    grouping = maxInverseKeyValue
                    continue
                }
            }
            
            if(grouping > 0) {
                grouping -= 1
            } else if(unknownSymbolHandling == .Ignore) {
                decryptedMessage += String(arrCiphertext[0])
                removeFirst(arr: &arrCiphertext, by: 1)
                grouping = 2
            } else if(unknownSymbolHandling == .Replace) {
                decryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrCiphertext, by: 1)
                grouping = 2
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrCiphertext, by: 1)
                grouping = 2
            }
        }
        
        return reformat(decryptedMessage)
    }
    
    public func crackKey(from cipherText: String) throws {
        throw CipherError.UnknownError
    }
    
    public func validateKey() throws {
        //This means that the inverseKey had multiple values set to the same thing.
        if(key.count != inverseKey.count) {
            throw CipherError.InvalidKey
        }
    }
    
    private func createInverseKey() {
        self.inverseKey = [:]
        
        for key in self.key {
            self.inverseKey[key.value] = key.key
        }
    }
}