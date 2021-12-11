//
//  File.swift
//  
//
//  Created by Logan Richards on 12/10/21.
//

import Foundation

/// Is a Mono-Alphabetic Subsitution cipher, that uses the reverse of the alphabet as a key. Thus A->Z, B->Y, etc.
public final class Atbash : MonoAlphabetic {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        var key: [String] = [String]()
        
        for char in alphabet.reversed() {
            key.append(String(char))
        }
        
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
    
}
