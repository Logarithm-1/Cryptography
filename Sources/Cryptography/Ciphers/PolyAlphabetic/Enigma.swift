//
//  Enigma.swift
//  
//
//  Created by Logan Richards on 12/18/21.
//

import Foundation

public class Enigma : PolyAlphabetic {
    
    struct Rotor {
        
    }
    
    struct Reflector {
        
    }
    
    
    
    //let rotors: [Rotor]
    
    public init?(caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        
        
        
        super.init(caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
}
