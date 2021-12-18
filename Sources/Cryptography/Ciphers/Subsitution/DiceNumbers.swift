//
//  File.swift
//  
//
//  Created by Logan Richards on 12/16/21.
//

import Foundation

public final class DiceNumbers : Subsitution {
    public init?(caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        
        let key: [String : String] = ["1" : "⚀", "2" : "⚁", "3" : "⚂", "4" : "⚃", "5" : "⚄", "6" : "⚅"]
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
}
