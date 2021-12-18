//
//  File.swift
//  
//
//  Created by Logan Richards on 12/13/21.
//

import Foundation

public class LetterNumber : MonoAlphabetic {
    let startIndex: Int
    
    public init?(startIndex: Int, acending: Bool = true, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = " ") {
        self.startIndex = startIndex
        var key: [String] = [String]()
        
        for i in 0..<alphabet.count {
            if(acending) {
                key.append(String(i + startIndex))
            } else {
                key.append(String(alphabet.count - (i + startIndex)))
            }
        }
        
        super.init(key: key, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
}
