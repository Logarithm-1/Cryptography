//
//  MonoAlphabetic.swift
//  
//
//  Created by Logan Richards on 12/10/21.
//

import Foundation

/// A Substitution cipher in which for a given `key`, the chipher alphabet for each plain alphabet is fixed throughout the encryption process.  *Example:* if `A` in encrypted as `D`, for any occurance in that plaintext, `A` will always get encrypted to `D`.
public class MonoAlphabetic : Subsitution {
    public let alphabet: [String]
    
    public init?(key: [String], alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        var dictionaryKey: [String : String] = [:]
        self.alphabet = alphabet
        
        //Is Valid Key
        if(alphabet.count != key.count) {
            return nil
        }
        
        for i in 0..<key.count {
            dictionaryKey[alphabet[i]] = key[i]
        }
        
        super.init(key: dictionaryKey, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator, homophonic: false)
    }
    
    public convenience init?(key: String, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        var arrayKey: [String] = [String]()
        
        for char in key {
            arrayKey.append(String(char))
        }
        
        self.init(key: arrayKey, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
    //TODO: Get / Set Key
    public func getKey() -> [String] {
        var basicKey: [String] = [String]()
        
        for letter in alphabet {
            if let subLetter = key[letter] {
                basicKey.append(subLetter)
            }
        }
        
        return basicKey
    }
    
    public func set(key: [String]) throws {
        var newKey: [String : String] = [:]
        
        //Is Valid Key
        if(alphabet.count != key.count) {
            throw CipherError.invalidKey
        }
        
        for i in 0..<key.count {
            newKey[alphabet[i]] = key[i]
        }
        
        try super.set(key: newKey)
    }
    
    public func set(key: String) throws {
        var arrayKey: [String] = [String]()
        
        for char in key {
            arrayKey.append(String(char))
        }
        
        try self.set(key: arrayKey)
    }
    
    public override func randomKey() {
        let randomKey: [String] = alphabet.shuffled()
        do {
            try set(key: randomKey)
        } catch {
            print("MonoAlphabetic Subsitution: Radom Key error")
        }
    }
}
