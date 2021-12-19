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

/// The **elements** of the the plaintext retain their original relative positions but are replaced by other elements with different values or meanings, with the result that the original text becomes unintelligible.
public class Subsitution: Cipher {
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
    
    private var key: [String : String]
    private var inverseKey: [String : String]
    
    private var homophonic: Bool
    
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
    
    public init?(key: [String : String], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "", homophonic: Bool = false) {
        self.key = key
        self.inverseKey = [:]
        self.homophonic = homophonic
        self.createInverseKey()
        
        self.caseSensitive = caseSensitive
        self.memorizeCase = memorizeCase
        self.unknownSymbolHandling = unknownSymbolHandling
        self.createNGroups = createNGroups
        self.seperator = seperator
        
        if(!isValidKey()) {
            return nil
        }
    }
    
    //MARK: - Key
    private func crackKey(from cipherText: String) -> [String : String]? {
        return nil
    }
    
    private func createInverseKey() {
        self.inverseKey = [:]
        
        for key in self.key {
            self.inverseKey[key.value] = key.key
        }
    }
    
    private func isValidKey() -> Bool {
        //This means that the inverseKey had multiple values set to the same thing.
        if(!homophonic && key.count != inverseKey.count) {
            return false
        }
        return true
    }
    
    public func set(key: [String : String]) throws {
        let oldKey = self.key
        
        self.key = key
        createInverseKey()
        
        if(!isValidKey()) {
            self.key = oldKey
            createInverseKey()
            
            throw CipherError.invalidKey
        }
    }
    
    public func getKey() -> [String : String] {
        return key
    }
    
    //MARK: - Encrypt / Decrypt
    public func encrypt(_ plaintext: String) -> String {
        var encryptedMessage: String = ""
        var arrPlaintext: [Character] = Array(caseSensitive ? plaintext : plaintext.uppercased())
        
        var grouping = maxKeyValue
        
        while(0 < arrPlaintext.count) {
            if let str = group(string: arrPlaintext, by: grouping) {
                if let encryptedStr = key[str] {
                    encryptedMessage += encryptedStr + seperator
                    removeFirst(arr: &arrPlaintext, by: grouping)
                    
                    grouping = maxKeyValue
                    continue
                }
            }
            
            if(grouping > 0) {
                grouping -= 1
            } else if(unknownSymbolHandling == .Ignore && String(arrPlaintext[0]) != seperator) {
                encryptedMessage += String(arrPlaintext[0])
                removeFirst(arr: &arrPlaintext, by: 1)
                grouping = maxKeyValue
            } else if(unknownSymbolHandling == .Replace) {
                encryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrPlaintext, by: 1)
                grouping = maxKeyValue
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrPlaintext, by: 1)
                grouping = maxKeyValue
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
    
    public func decrypt(_ ciphertext: String) -> String {
        var decryptedMessage: String = ""
        var arrCiphertext: [Character] = Array(caseSensitive ? ciphertext : ciphertext.uppercased())
        
        var grouping = maxInverseKeyValue
        
        while(0 < arrCiphertext.count) {
            if let str = group(string: arrCiphertext, by: grouping) {
                if let decryptedStr = inverseKey[str] {
                    decryptedMessage += decryptedStr + seperator
                    
                    removeFirst(arr: &arrCiphertext, by: grouping)
                    
                    grouping = maxInverseKeyValue
                    continue
                }
            }
            
            if(grouping > 0) {
                grouping -= 1
            } else if(unknownSymbolHandling == .Ignore && String(arrCiphertext[0]) != seperator) {
                decryptedMessage += String(arrCiphertext[0])
                removeFirst(arr: &arrCiphertext, by: 1)
                grouping = maxKeyValue
            } else if(unknownSymbolHandling == .Replace) {
                decryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrCiphertext, by: 1)
                grouping = maxKeyValue
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrCiphertext, by: 1)
                grouping = maxKeyValue
            }
        }
        
        return reformat(decryptedMessage)
    }
    
    public func randomKey() {
        
    }
}
