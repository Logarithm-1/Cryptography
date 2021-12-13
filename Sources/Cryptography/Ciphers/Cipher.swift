//
//  File.swift
//  File
//
//  Created by Logan Richards on 10/10/21.
//

import Foundation

public enum UnknownSymbolHandlingMode {
    case Ignore
    case Replace
    case Remove
}

public protocol Cipher {
    /// If `true`, the `cipher` will treat uppercase letters different from lowercase letters. Whereas, when `false` the `cipher` will treat uppercase and lowercase letters as the same.
    var caseSensitive: Bool {get set}
    
    /// If `true` the `cipher` will encrypt/decrypt the plaintext/ciphertext with the output having the same case pattern.
    /// For example if encrypting the message "Hello World" the decrypted message would be "Jgeeo Xobea" if `true` and "JGEEO XOBEA" if `false`
    var memorizeCase: Bool { get set }
    
    /// Approach when encoutering a symbol that the cipher dose not know how to handle (i.e. not in the key).
    /// If encrypting "Hello World." with the period being seen as an unknown symbol,  The options are to
    ///     - to `Ignore`such that the output will be "JGEEO XOBEA."
    ///     - to `Replace` such that the output will be "JGEEO⍰XOBEA⍰"
    ///     - to `Remove` such that the output will be "JGEEOXOBEA"
    var unknownSymbolHandling: UnknownSymbolHandlingMode { get set }
    
    /// Format the encrypted/decrypted plaintext/ciphertext into groups of n.
    ///     - If `nil` then don't format the plaintext/ciphertext
    ///     - If `0` then don't do anything
    ///     - If `4` then seperate by groups of 4, for example "JGEE OXOB EA"
    var createNGroups: Int? { get set }
    
    /// Format the encrypted/decrypted plaintext/ciphertext into groups of n.
    ///     - If `""` then don't seperate the values  of the plaintext/ciphertext
    ///     - If `*` then seperate by "\*" for example "A\*B\*C\*D"
    var seperator: String { get set }
    
    /// Encrypts `plaintext`
    /// - Parameter plaintext: The message to be encryted
    /// - Returns `ciphertext`
    /// - Throws: ``CipherError``
    func encrypt(_ plaintext: String) -> String
    
    /// Decrypts `ciphertext`
    /// - Parameter ciphertext: The message to be encryted
    /// - Returns `plaintext`
    /// - Throws: ``CipherError``
    func decrypt(_ ciphertext: String) -> String
    
    func reformat(_ message: String) -> String
}

extension Cipher {
    public func reformat(_ message: String) -> String {
        if let n = createNGroups {
            var reformatedMessage: String = ""
            var i = 0
            
            for char in message {
                if(i % n == 0 && i != 0) {
                    reformatedMessage += " "
                }
                
                reformatedMessage += String(char)
                i += 1
            }
            
            
            return reformatedMessage
        }
        
        return message
    }
}
