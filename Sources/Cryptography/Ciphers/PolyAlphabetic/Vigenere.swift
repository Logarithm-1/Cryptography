//
//  Vigenere.swift
//  
//
//  Created by Logan Richards on 12/18/21.
//

import Foundation

public class Vigenere : PolyAlphabetic {
    private var key: String
    
    public init?(key: String, caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        
        self.key = key
        
        super.init(caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
    public override func encrypt(_ plaintext: String) -> String {
        <#code#>
    }
}
