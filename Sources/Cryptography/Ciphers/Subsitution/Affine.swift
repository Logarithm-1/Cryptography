import Foundation

/// - Author: Logan Richards
/// - Date: December 16, 2021
/// - Copyright: 2021 Logarithm
/// - Since: Version 0.1
/// - Version: 0.1
///
/// An Affine cipher is a monoalphabetical substitution cipher whose correspondence is given bay an affine function endowed with 2 coefficients `A` and `B` (`f(x) = ax + b`).
///
/// **Encryption:**
/// Encrypting uses two integers `A` and `B`, called coefficients, as keys. These are the parameters of the afine function `Ax + B`. For each letter of the alphabet is associated to the value of its position in the alphabet (starting at 0) `A=0, B=1, ..., Z=25`. For each letter of value `x`of the plaintext, is associated a value `y`, resulting of the affine function `y = Ax + B MOD 26` (with 26 the alphabet size). For each value `y`, corresponds a letter with the same position in the alphabet, it is the ciphered letter. The Affine ciphertext is the replacement of all the letters by the new ones.
///
/// *Example:* Encrypt `PIZZA` with keys `A=5, B=3`, `P = 15` thus `5*15 + 3 = 75 + 3 = 78` and `78 MOD 26 = 0 = A` and so on you get `ARYYD`
///
/// **Decryption:**
///
/// **Recognize:**
public final class Affine : MonoAlphabetic {
    let aCoefficient: Int
    let bCoefficient: Int
    
    public init?(a: Int, b: Int, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        self.aCoefficient = a
        self.bCoefficient = b
        
        var key: [String] = [String]()
        
        for index in 0..<alphabet.count {
            var value: Int = a*index + b
            while(value < 0) {
                value += alphabet.count
            }
            value %= alphabet.count
            key.append(alphabet[value])
        }
        
        super.init(key: key, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
}
