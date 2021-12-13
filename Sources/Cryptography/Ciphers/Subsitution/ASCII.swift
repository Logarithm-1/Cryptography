//
//  File.swift
//  
//
//  Created by Logan Richards on 12/12/21.
//

import Foundation

public class ASCII : Subsitution {
    
    public init?(caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        var key: [String : String] = [:]
        
        for i in 32..<100000 {
            if let uni = UnicodeScalar(i) {
                let str: String = String(Character(uni))
                if(str != "") {
                    key[str] = String(i)
                }
            }
        }
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
}
