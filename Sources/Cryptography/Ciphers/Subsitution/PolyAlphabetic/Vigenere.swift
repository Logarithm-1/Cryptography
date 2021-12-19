//
//  Vigenere.swift
//  
//
//  Created by Logan Richards on 12/18/21.
//

import Foundation

public class Vigenere : PolyAlphabetic {
    var phraseKey: String
    var alphabet: [String]
    
    public init?(phraseKey: String, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        self.alphabet = alphabet
        self.phraseKey = phraseKey.uppercased()
        var key: [String : Subsitution] = [:]
        
        for i in 0..<alphabet.count {
            if let cipher = CaesarShift(shift: (i), alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator) {
                key[alphabet[i]] = cipher
            } else {
                return nil
            }
        }
        
        super.init(key: key, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
    private func textWithKey(_ text: String) -> String {
        var textWithKey: String = ""
        let arrPhraseKey: [Character] = Array(phraseKey)
        var index: Int = 0
        
        for char in (caseSensitive ? text : text.uppercased()) {
            if(alphabet.contains(String(char))) {
                textWithKey += String(char) + "_" + String(arrPhraseKey[index])
                index += 1
                index %= arrPhraseKey.count
            } else {
                textWithKey += String(char)
            }
        }
        
        return textWithKey
    }
    
    public override func encrypt(_ plaintext: String) -> String {
        return super.encrypt(textWithKey(plaintext))
    }
    
    public override func decrypt(_ ciphertext: String) -> String {
        return super.decrypt(textWithKey(ciphertext))
    }
    
    
    
}
