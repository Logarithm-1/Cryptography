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
public class PolyAlphabetic : Subsitution {
    public init?(key: [String : String], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator, homophonic: true)
    }
    
    
}
