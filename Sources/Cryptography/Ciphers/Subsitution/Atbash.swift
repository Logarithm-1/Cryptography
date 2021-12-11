//
//  Atbash.swift
//  
//
//  Created by Logan Richards on 12/10/21.
//

import Foundation

/// Is a Mono-Alphabetic Subsitution cipher, that uses the reverse of the alphabet as a key. Thus A->Z, B->Y, etc.
public final class Atbash : MonoAlphabetic {
    public init?(alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        var key: [String] = [String]()
        
        for char in alphabet.reversed() {
            key.append(String(char))
        }
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }    
}
