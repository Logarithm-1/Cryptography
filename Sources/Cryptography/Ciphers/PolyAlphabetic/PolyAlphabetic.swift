//
//  File.swift
//  
//
//  Created by Logan Richards on 12/12/21.
//

import Foundation

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
    
    /// A witten polysyllabic language that has establish and maintained by agreement or convention, that between **two** sets of elements to represent the sounds.
    private let alphabet: [String]
    
    private var maxLenghtAlphabetElements: Int {
        var max = 0
        
        for a in alphabet {
            if(a.count > max) {
                max = a.count
            }
        }
        
        return max
    }
    
    public init?(alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        self.alphabet = alphabet
        
        self.caseSensitive = caseSensitive
        self.memorizeCase = memorizeCase
        self.unknownSymbolHandling = unknownSymbolHandling
        self.createNGroups = createNGroups
        self.seperator = seperator
    }
    
    public func encrypt(_ plaintext: String) -> String {
        var encryptedMessage: String = ""
        var arrPlaintext: [Character] = Array(caseSensitive ? plaintext : plaintext.uppercased())
        
        var grouping = maxLenghtAlphabetElements
        var index = 0
        
        while(0 < arrPlaintext.count) {
            if let str = group(string: arrPlaintext, by: grouping) {
                if let encryptedStr = encrypt(element: str, index: index) {
                    encryptedMessage += encryptedStr + seperator
                    removeFirst(arr: &arrPlaintext, by: grouping)
                    index += grouping
                    
                    grouping = maxLenghtAlphabetElements
                    continue
                }
            }
            
            if(grouping > 0) {
                grouping -= 1
            } else if(unknownSymbolHandling == .Ignore && String(arrPlaintext[0]) != seperator) {
                encryptedMessage += String(arrPlaintext[0])
                removeFirst(arr: &arrPlaintext, by: 1)
                index += 1
                grouping = maxLenghtAlphabetElements
            } else if(unknownSymbolHandling == .Replace) {
                encryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrPlaintext, by: 1)
                index += 1
                grouping = maxLenghtAlphabetElements
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrPlaintext, by: 1)
                index += 1
                grouping = maxLenghtAlphabetElements
            }
        }
        
        return encryptedMessage
    }
    
    internal func encrypt(element: String, index: Int) -> String? {
        return nil
    }
    
    public func decrypt(_ ciphertext: String) -> String {
        var decryptedMessage: String = ""
        var arrCiphertext: [Character] = Array(caseSensitive ? ciphertext : ciphertext.uppercased())
        
        var grouping = maxLenghtAlphabetElements
        var index = 0
        
        while(0 < arrCiphertext.count) {
            if let str = group(string: arrCiphertext, by: grouping) {
                if let encryptedStr = decrypt(element: str, index: index) {
                    decryptedMessage += encryptedStr + seperator
                    removeFirst(arr: &arrCiphertext, by: grouping)
                    index += grouping
                    
                    grouping = maxLenghtAlphabetElements
                    continue
                }
            }
            
            if(grouping > 0) {
                grouping -= 1
            } else if(unknownSymbolHandling == .Ignore && String(arrCiphertext[0]) != seperator) {
                decryptedMessage += String(arrCiphertext[0])
                removeFirst(arr: &arrCiphertext, by: 1)
                index += 1
                grouping = maxLenghtAlphabetElements
            } else if(unknownSymbolHandling == .Replace) {
                decryptedMessage += replaceUnknownSymbolWith
                removeFirst(arr: &arrCiphertext, by: 1)
                index += 1
                grouping = maxLenghtAlphabetElements
            } else {
                //unknownSymbolHandling should be .Remove
                removeFirst(arr: &arrCiphertext, by: 1)
                index += 1
                grouping = maxLenghtAlphabetElements
            }
        }
        
        return decryptedMessage
    }
    
    internal func decrypt(element: String, index: Int) -> String? {
        return nil
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
    
    public func randomKey() {
        
    }
    
}
