//
//  File.swift
//  
//
//  Created by Logan Richards on 12/15/21.
//

import Foundation

public final class Book : Subsitution {
    let book: String
    
    /// If True: The Cipher will find the index of the complete word
    /// False: The Ciper will find the index of the first letter
    let subsituteCompleteWord: Bool
    
    public init?(book: String, subsituteCompleteWord: Bool = false, caseSensitive: Bool = true, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        self.book = book
        self.subsituteCompleteWord = subsituteCompleteWord
        
        for word in book.split(separator: " ") {
            
        }
        
        let key: [String : String] = [ : ]
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator, homophonic: false)
    }
}
