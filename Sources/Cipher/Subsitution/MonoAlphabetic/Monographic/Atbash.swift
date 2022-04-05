//
//  Atbash.swift
//  
//
//  Created by Logan Richards on 12/10/21.
//

import Foundation

/// - Author: Logan Richards
/// - Date: December 10, 2021
/// - Copyright: 2021 Logarithm
/// - Since: Version 0.1
/// - Version: 0.1
///
/// An Atbash cipher (also called Mirror Cipher, Backwards Alphabet, or Reverse Alphabet) is a monoalphabetical substitution cipher which uses the reverse of the alphabet as a `key`.
///
/// **Encryption:**
/// Encryption consists of replacing letters of the first letter of the alphabet `A` with the last one `Z`, the second one `B` with the penultimate `Y` and so on.
/// *Example: MIRROR becomes NRIILI*
///
/// **Decryption:**
/// Decryption is identical to encryption due to the mirror nature of the  `key`.
/// *Example: ZGYZHS is decrypted ATBASH*
///
/// **Recognize:**
/// An Atbash ciphertext, like any Mono-Alphabetic substitution, has a coincidence index similar to an unencrypted text.
/// If the ciphertext uses the classical latin alphabet, letters `V, G, R, L, M` appear the most frequently.
/// Otherwise the presence of Hebrew characters or a reference to the Dead Sea can be a clue that the ciphertext is encrypted with the Atbash cipher.
/// The notions of mirror, reflection, axis, direction, word written in reverse (hsabta) can also be an indicater.
///
/// **Orgin:**
/// In the Hebraic alphabet, aleph (first letter) was replaced by tab (last letter) and beth (second letter) with shin (second last), etc. Initials max A, T, B, SH.
/// Atbash would have been imagined between -1000 and -500 (before Christ).
///
/// **Variants:**
///  - Atbash Cipher is adaptable to any alphabet, so using the Hebrew alphabet is possible.
///  - Equivalent to an Affine cipher with  `a = - 1` and `b = -1`
///  - Equivalent to a Monoalphabetic substitution with the `key = ZYXWVUTSRQPONMLKJIHGFEDCBA`
public final class Atbash : MonoAlphabetic {
    public init?(alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        super.init(key: alphabet.reversed(), alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }    
}
