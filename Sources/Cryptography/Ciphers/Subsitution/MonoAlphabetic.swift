//
//  MonoAlphabetic.swift
//  
//
//  Created by Logan Richards on 12/10/21.
//

import Foundation

public class MonoAlphabetic : Subsitution {
    
    public init?(key: [String], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        let alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        var dictionaryKey: [String : String] = [:]
        
        //Is Valid Key
        if(alphabet.count != key.count) {
            return nil
        }
        
        for i in 0..<key.count {
            dictionaryKey[alphabet[i]] = key[i]
        }
        
        super.init(key: dictionaryKey, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?(key: String, caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        var arrayKey: [String] = [String]()
        
        for char in key {
            arrayKey.append(String(char))
        }
        
        self.init(key: arrayKey, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    //TODO: Get / Set Key
    public func getKey() -> [String] {
        return [String]()
    }
    
    public func set(key: [String]) throws {
        let alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        var dictionaryKey: [String : String] = [:]
        
        //Is Valid Key
        if(alphabet.count != key.count) {
            throw CipherError.invalidKey
        }
        
        for i in 0..<key.count {
            dictionaryKey[alphabet[i]] = key[i]
        }
        
        try super.set(key: dictionaryKey)
    }
    
    public func set(key: String) throws {
        var arrayKey: [String] = [String]()
        
        for char in key {
            arrayKey.append(String(char))
        }
        
        try self.set(key: arrayKey)
    }
}


enum CipherError : Error {
    case invalidKey
}
