//
//  File.swift
//  
//
//  Created by Logan Richards on 12/13/21.
//

import Foundation

public final class ASCIIShift : Subsitution {
    var shift: Int
    let upperLimitOfASCII: Int = 100_000
    
    public init?(shift: Int, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, seperator: String = "") {
        self.shift = shift
        super.init(key: [:], caseSensitive: true, memorizeCase: false, unknownSymbolHandling: unknownSymbolHandling, createNGroups: nil, seperator: seperator, homophonic: false)
    }
    
    public override func encrypt(_ plaintext: String) -> String {
        var encryptedMessage: String = ""
        
        for char in plaintext {
            if let ascii = char.asciiValue {
                var asciiNum = Int(ascii) + shift
                
                if(asciiNum < 0) {
                    asciiNum += upperLimitOfASCII
                }
                
                if(asciiNum > upperLimitOfASCII) {
                    asciiNum %= upperLimitOfASCII
                }
                
                if let newAscii = UnicodeScalar(asciiNum) {
                    encryptedMessage += String(newAscii) + seperator
                } else if(unknownSymbolHandling == .Ignore) {
                    encryptedMessage += String(char)
                } else if(unknownSymbolHandling == .Replace) {
                    encryptedMessage += replaceUnknownSymbolWith
                }
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
        
        for char in ciphertext {
            if let ascii = char.asciiValue {
                var asciiNum = Int(ascii) - shift
                
                if(asciiNum < 0) {
                    asciiNum += upperLimitOfASCII
                }
                
                if(asciiNum > upperLimitOfASCII) {
                    asciiNum %= upperLimitOfASCII
                }
                
                if let newAscii = UnicodeScalar(asciiNum) {
                    decryptedMessage += String(newAscii) + seperator
                } else if(unknownSymbolHandling == .Ignore) {
                    decryptedMessage += String(char)
                } else if(unknownSymbolHandling == .Replace) {
                    decryptedMessage += replaceUnknownSymbolWith
                }
            } else if(unknownSymbolHandling == .Ignore) {
                decryptedMessage += String(char)
            } else if(unknownSymbolHandling == .Replace) {
                decryptedMessage += replaceUnknownSymbolWith
            }
        }
        
        return reformat(decryptedMessage)
    }
}
