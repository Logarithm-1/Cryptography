//
//  File.swift
//  
//
//  Created by Logan Richards on 12/11/21.
//

import Foundation

public final class Bacon : MonoAlphabetic {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        let key: [String] = ["AAAAA", "AAAAB", "AAABA", "AAABB", "AABAA", "AABAB", "AABBA", "AABBB", "ABAAA", "ABAAB", "ABABA", "ABABB", "ABBAA", "ABBAB", "ABBBA", "ABBBB", "BAAAA", "BAAAB", "BAABA", "BAABB", "BABAA", "BABAB", "BABBA", "BABBB", "BBAAA", "BBAAB"]
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

