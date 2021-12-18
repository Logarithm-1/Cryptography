//
//  File.swift
//  
//
//  Created by Logan Richards on 12/16/21.
//

import Foundation

public final class PrimeNumbers : MonoAlphabetic {
    public init?(alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: Bool = false, memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = " ") {
        var key: [String] = [String]()
        var primes: [Int] = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]
        
        while(primes.count < alphabet.count) {
            //Add primes, if needed
            var potentialPrime: Int = (primes.last ?? 2)
            potentialPrime += potentialPrime == 2 ? 1 : 2
            
            var index: Int = 0
            while(index < primes.count) {
                if(potentialPrime % primes[index] == 0) {
                    potentialPrime += potentialPrime == 2 ? 1 : 2
                    index = 0
                } else {
                    index += 1
                }
            }
            
            //potential Prime should be a prime number
            primes.append(potentialPrime)
        }
        
        for i in 0..<alphabet.count {
            key.append(String(primes[i]))
        }
        
        super.init(key: key, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
}
