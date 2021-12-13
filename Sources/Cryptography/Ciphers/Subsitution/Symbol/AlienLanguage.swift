//
//  File.swift
//  
//
//  Created by Logan Richards on 12/12/21.
//

import Foundation

public final class AlienLanguage : MonoAlphabetic {
    public init?(unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        let key: [String] = ["⏃", "⏚", "☊", "⎅", "⟒", "⎎", "☌", "⊑", "⟟", "⟊", "☍", "⌰", "⋔", "⋏", "⍜", "⌿", "⍾", "⍀", "⌇", "⏁", "⎍", "⎐", "⍙", "⌖", "⊬", "⋉"]
        super.init(key: key, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
}
