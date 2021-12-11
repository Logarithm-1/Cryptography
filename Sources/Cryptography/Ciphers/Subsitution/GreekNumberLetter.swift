//
//  GreekNumberLetter.swift
//  
//
//  Created by Logan Richards on 12/11/21.
//

import Foundation

public final class GreekNumberLetter : MonoAlphabetic {
    
    public init?(caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        let alphabet: [String] = ["α", "β", "γ", "δ", "ε", "ζ", "η", "θ", "ι", "κ", "λ", "μ", "ν", "ξ", "ο", "π", "ρ", "σ", "τ", "υ", "φ", "χ", "ψ", "ω"]
        
        var key: [String] = [String]()
        
        for i in 0..<alphabet.count {
            key.append(String(i + 1))
        }
        
        super.init(key: key, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
}
