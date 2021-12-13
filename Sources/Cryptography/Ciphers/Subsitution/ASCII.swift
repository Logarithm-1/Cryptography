//
//  File.swift
//  
//
//  Created by Logan Richards on 12/12/21.
//

import Foundation

public final class ASCII : Subsitution {
    public init?(unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, seperator: String = " ") {
        super.init(key: [:], caseSensitive: true, memorizeCase: false, unknownSymbolHandling: unknownSymbolHandling, createNGroups: nil, seperator: seperator)
    }
    
    public override func encrypt(_ plaintext: String) -> String {
        var encryptedMessage: String = ""
        
        for char in plaintext {
            if let ascii = char.asciiValue {
                encryptedMessage += String(ascii) + seperator
            } else if(unknownSymbolHandling == .Ignore) {
                encryptedMessage += String(char)
            } else if(unknownSymbolHandling == .Replace) {
                encryptedMessage += replaceUnknownSymbolWith
            }
        }
        
        return reformat(encryptedMessage)
    }
    
    public override func decrypt(_ ciphertext: String) -> String {
        var decryptedMessage: String = ""
        let ciphertextArr: [String] = ciphertext.components(separatedBy: seperator)
        
        for asciiStr in ciphertextArr {
            if let asciiNum = Int(asciiStr) {
                if let ascii = UnicodeScalar(asciiNum) {
                    decryptedMessage += String(ascii) + seperator
                } else if(unknownSymbolHandling == .Ignore) {
                    decryptedMessage += asciiStr
                } else if(unknownSymbolHandling == .Replace) {
                    decryptedMessage += replaceUnknownSymbolWith
                }
            } else if(unknownSymbolHandling == .Ignore) {
                decryptedMessage += asciiStr
            } else if(unknownSymbolHandling == .Replace) {
                decryptedMessage += replaceUnknownSymbolWith
            }
        }
        
        return reformat(decryptedMessage)
    }
}
