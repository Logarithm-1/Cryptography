//
//  File.swift
//  
//
//  Created by Logan Richards on 12/12/21.
//

import Foundation

public final class AlienLanguage : Subsitution {
    
    public init?(unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        let key: [String : String] = ["A" : "⏃", "B" : "⏚", "C" : "☊", "D" : "⎅", "E" : "⟒", "F" : "⎎", "G" : "☌", "H" : "⊑", "I" : "⟟", "J" : "⟊", "K" : "☍", "L" : "⌰", "M" : "⋔", "N" : "⋏", "O" : "⍜", "P" : "⌿", "Q" : "⍾", "R" : "⍀", "S" : "⌇", "T" : "⏁", "U" : "⎍", "V" : "⎐", "W" : "⍙", "X" : "⌖", "Y" : "⊬", "Z" : "⋉"]
        
        super.init(key: key, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
    
}
