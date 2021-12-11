//
//  File.swift
//  
//
//  Created by Logan Richards on 12/10/21.
//

import Foundation

public class CaesarShift : MonoAlphabetic {
    private var shift: Int = 0
    
    public init?(shift: Int, caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        self.shift = shift
        
        var key: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        
        //Shift key
        for _ in 0..<(shift % key.count) {
            let temp: String = key.removeFirst()
            key.append(temp)
        }
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?(shift: Int) {
        self.init(shift: shift, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
    
    
    //MARK: - Shift
    public func getShift() -> Int {
        return self.shift
    }
    
    public func set(shift: Int) throws {
        self.shift = shift
        
        var key: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
        
        //Shift key
        for _ in 0..<(shift % key.count) {
            let temp: String = key.removeFirst()
            key.append(temp)
        }
        
        try super.set(key: key)
    }
    
}
