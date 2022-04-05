//
//  CaesarShift.swift
//  
//
//  Created by Logan Richards on 12/10/21.
//

import Foundation

/// The simplest kind of **substitution** ciphers known in cryptologic literature. It was long used before Julius Ceasar. In the cipher, each letter of the plaintext is replaced by the letter standing the third to the right of it in the ordinary alphabet. `A` to `D`, `B` to `E`,.... The word `cab` becomes converted into `FDE`, which is cipher. 
public class CaesarShift : MonoAlphabetic {
    private var shift: Int = 0
    
    public init?(shift: Int = 3, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        self.shift = shift
        
        var key: [String] = alphabet
        
        //Shift key
        for _ in 0..<(shift % key.count) {
            let temp: String = key.removeFirst()
            key.append(temp)
        }
        
        super.init(key: key, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
    //MARK: - Shift
    public func getShift() -> Int {
        return self.shift
    }
    
    public func set(shift: Int) throws {
        self.shift = shift
        
        var key: [String] = alphabet
        
        //Shift key
        for _ in 0..<(shift % key.count) {
            let temp: String = key.removeFirst()
            key.append(temp)
        }
        
        try super.set(key: key)
    }
    
}
