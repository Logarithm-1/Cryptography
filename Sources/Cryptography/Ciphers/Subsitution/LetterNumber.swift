//
//  File.swift
//  
//
//  Created by Logan Richards on 12/13/21.
//

import Foundation

public final class LetterNumber : MonoAlphabetic {
    let startIndex: Int
    
    public init?(startIndex: Int, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = " ") {
        self.startIndex = startIndex
        var key: [String] = [String]()
        
        for i in 0..<alphabet.count {
            key.append(String(i + startIndex))
        }
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
}
