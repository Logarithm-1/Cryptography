//
//  Enigma.swift
//  
//
//  Created by Logan Richards on 12/18/21.
//

import Foundation

public class Enigma: PolyAlphabetic {
    private class Rotor: MonoAlphabetic {
        var position: Int
        let turnoverPositions: [Int]
        
        init?(key: [String], turnoverPositions: [Int], alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], position: Int = 0) {
            self.position = position
            self.turnoverPositions = turnoverPositions
            
            super.init(key: key, alphabet: alphabet, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Remove, createNGroups: nil, seperator: "")
        }
        
        public func rotate() -> Bool {
            let turnOver: Bool = turnoverPositions.contains(position)
            //Get current key
            var newKey: [String] = getKey()
            
            //Rotate Key
            let temp: String = newKey.removeFirst()
            newKey.append(temp)
            
            //Set New position
            position += 1
            position %= newKey.count
            
            //Set New Key
            do {
                try set(key: newKey)
            } catch {
                print("Enigma Rotor Rotate Error.")
            }
            
            return turnOver
        }
        
        public func setStartPosition(to pos: Int) -> Int? {
            if(pos >= 0 && pos < (getKey() as [String]).count) {
                while(pos != position) {
                    let _ = rotate()
                }
                return position
            }
            return nil
        }
        
        public func setStartPosition(to letter: String) -> Int? {
            if let pos: Int = alphabet.firstIndex(of: letter) {
                return self.setStartPosition(to: pos)
            }
            return nil
        }
    }
    
    private class Reflector: MonoAlphabetic {
        init?(key: [String], alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]) {
            super.init(key: key, alphabet: alphabet, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Remove, createNGroups: nil, seperator: "")
        }
    }
    
    private class Plugbord: MonoAlphabetic {
        init?(key: [String], alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]) {
            super.init(key: key, alphabet: alphabet, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Remove, createNGroups: nil, seperator: "")
        }
    }
    
    let alphabet: [String]
    /// Rotors in the engima machine, where the first element (index 0) is the leftmost rotor and the last element is the rightmost element
    let rotors: [String]
    let reflector: String
    let plugboard: String = "plugboard"
    
    public init?(rotors: [String], initalRotorPositions: [String], reflector: String, plugboard: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil, seperator: String = "") {
        self.alphabet = alphabet
        self.rotors = rotors
        self.reflector = reflector
        
        //Validate Parameters
        //If rotors and initial rotor positions are the same size.
        if(rotors.count != initalRotorPositions.count) {
            print("ERROR: Rotors and Inital Rotors should be the same size")
            return nil
        }
        
        //Are the Inital Rotor Positions vaild
        for position in initalRotorPositions {
            if(!alphabet.contains(position)) {
                print("ERROR Rotor Positions valid")
                return nil
            }
        }
        
        //Are the rotor inputs valid.
        let validRotorIds: [String] = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII"]
        let validReflectorIds: [String] = ["BETA", "GAMMA", "A", "B", "C", "B-THIN", "C-THIN", "ETW"]
        for rotor in rotors {
            if(!validRotorIds.contains(rotor)) {
                print("ERROR Rotor valid")
                return nil
            }
        }
        
        //Are the Reflector inputs valid
        if(!validReflectorIds.contains(reflector)) {
            print("ERROR Reflectors valid")
            return nil
        }
        
        //Create Key based off of original Enigma specs
        var key: [String : Subsitution] = [:]
        
        //Add Rotors
        if let rotorI = Rotor(key: ["E", "K", "M", "F", "L", "G", "D", "Q", "V", "Z", "N", "T", "O", "W", "Y", "H", "X", "U", "S", "P", "A", "I", "B", "R", "C", "J"], turnoverPositions: [16], alphabet: alphabet, position: 0),
            let rotorII = Rotor(key: ["A", "J", "D", "K", "S", "I", "R", "U", "X", "B", "L", "H", "W", "T", "M", "C", "Q", "G", "Z", "N", "P", "Y", "F", "V", "O", "E"], turnoverPositions: [4], alphabet: alphabet, position: 0),
            let rotorIII = Rotor(key: ["B", "D", "F", "H", "J", "L", "C", "P", "R", "T", "X", "V", "Z", "N", "Y", "E", "I", "W", "G", "A", "K", "M", "U", "S", "Q", "O"], turnoverPositions: [21], alphabet: alphabet, position: 0),
            let rotorIV = Rotor(key: ["E", "S", "O", "V", "P", "Z", "J", "A", "Y", "Q", "U", "I", "R", "H", "X", "L", "N", "F", "T", "G", "K", "D", "C", "M", "W", "B"], turnoverPositions: [9], alphabet: alphabet, position: 0),
            let rotorV = Rotor(key: ["V", "Z", "B", "R", "G", "I", "T", "Y", "U", "P", "S", "D", "N", "H", "L", "X", "A", "W", "M", "J", "Q", "O", "F", "E", "C", "K"], turnoverPositions: [25], alphabet: alphabet, position: 0),
            let rotorVI = Rotor(key: ["J", "P", "G", "V", "O", "U", "M", "F", "Y", "Q", "B", "E", "N", "H", "Z", "R", "D", "K", "A", "S", "X", "L", "I", "C", "T", "W"], turnoverPositions: [12, 25], alphabet: alphabet, position: 0),
            let rotorVII = Rotor(key: ["N", "Z", "J", "H", "G", "R", "C", "X", "M", "Y", "S", "W", "B", "O", "U", "F", "A", "I", "V", "L", "P", "E", "K", "Q", "D", "T"], turnoverPositions: [12, 25], alphabet: alphabet, position: 0),
            let rotorVIII = Rotor(key: ["F", "K", "Q", "H", "T", "L", "X", "O", "C", "B", "J", "S", "P", "D", "Z", "R", "A", "M", "E", "W", "N", "I", "U", "Y", "G", "V"], turnoverPositions: [12, 25], alphabet: alphabet, position: 0) {
            key["I"] = rotorI
            key["II"] = rotorII
            key["III"] = rotorIII
            key["IV"] = rotorIV
            key["V"] = rotorV
            key["VI"] = rotorVI
            key["VII"] = rotorVII
            key["VIII"] = rotorVIII
        } else {
            print("ERROR Add Rotors")
            return nil
        }
        
        //Add Reflectors
        if let reflectorBeta = Reflector(key: ["L", "E", "Y", "J", "V", "C", "N", "I", "X", "W", "P", "B", "Q", "M", "D", "R", "T", "A", "K", "Z", "G", "F", "U", "H", "O", "S"], alphabet: alphabet),
            let reflectorGamma = Reflector(key: ["F", "S", "O", "K", "A", "N", "U", "E", "R", "H", "M", "B", "T", "I", "Y", "C", "W", "L", "Q", "P", "Z", "X", "V", "G", "J", "D"], alphabet: alphabet),
            let reflectorA = Reflector(key: ["E", "J", "M", "Z", "A", "L", "Y", "X", "V", "B", "W", "F", "C", "R", "Q", "U", "O", "N", "T", "S", "P", "I", "K", "H", "G", "D"], alphabet: alphabet),
            let reflectorB = Reflector(key: ["Y", "R", "U", "H", "Q", "S", "L", "D", "P", "X", "N", "G", "O", "K", "M", "I", "E", "B", "F", "Z", "C", "W", "V", "J", "A", "T"], alphabet: alphabet),
            let reflectorC = Reflector(key: ["F", "V", "P", "J", "I", "A", "O", "Y", "E", "D", "R", "Z", "X", "W", "G", "C", "T", "K", "U", "Q", "S", "B", "N", "M", "H", "L"], alphabet: alphabet),
            let reflectorBThin = Reflector(key: ["E", "N", "K", "Q", "A", "U", "Y", "W", "J", "I", "C", "O", "P", "B", "L", "M", "D", "X", "Z", "V", "F", "T", "H", "R", "G", "S"], alphabet: alphabet),
            let reflectorCThin = Reflector(key: ["R", "D", "O", "B", "J", "N", "T", "K", "V", "E", "H", "M", "L", "F", "C", "W", "Z", "A", "X", "G", "Y", "I", "P", "S", "U", "Q"], alphabet: alphabet),
            let reflectorETW = Reflector(key: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], alphabet: alphabet) {
            key["BETA"] = reflectorBeta
            key["GAMMA"] = reflectorGamma
            key["A"] = reflectorA
            key["B"] = reflectorB
            key["C"] = reflectorC
            key["B-THIN"] = reflectorBThin
            key["C-THIN"] = reflectorCThin
            key["ETW"] = reflectorETW
        } else {
            print("ERROR add reflectors")
            return nil
        }
        
        //Add Plugboard
        if let plugboard = Plugbord(key: plugboard, alphabet: alphabet) {
            key[self.plugboard] = plugboard
        } else {
            print("ERROR add plugboard")
            return nil
        }
        
        //Set Inital Rotor Positions
        for i in 0..<rotors.count {
            if let rotor = key[rotors[i]] {
                if rotor is Rotor {
                    if let _ = (rotor as! Rotor).setStartPosition(to: initalRotorPositions[i]) {
                    } else {
                        print("ERROR set inital rotor positoins")
                        return nil
                    }
                } else {
                    print("ERROR set inital rotor positoins")
                    return nil
                }
            } else {
                print("ERROR set inital rotor positoins")
                return nil
            }
        }
        
        super.init(key: key, caseSensitive: false, memorizeCase: false, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups, seperator: seperator)
    }
    
    public override func encrypt(_ plaintext: String) -> String {
        var encryptedMessage: String = ""
        
        for char in plaintext.uppercased() {
            var encryptedChar: String = String(char)
            var validChar: Bool = true
            
            if(alphabet.contains(encryptedChar)) {
                //Rotate rotors
                rotateRotors()
                
                //Go through the rotors, from right to left
                for rotor in rotors.reversed() {
                    if let cipher = key[rotor] {
                        encryptedChar = cipher.encrypt(encryptedChar)
                    } else {
                        validChar = false
                    }
                }
                
                //Go through the reflector
                if let cipher = key[reflector] {
                    encryptedChar = cipher.encrypt(encryptedChar)
                } else {
                    validChar = false
                }
                
                //Go back through the rotors, from left to right. Since we are going through backwards we want to use decrypt instead of encrypt.
                for rotor in rotors {
                    if let cipher = key[rotor] {
                        encryptedChar = cipher.decrypt(encryptedChar)
                    } else {
                        validChar = false
                    }
                }
                
                //Pass through the plugboard
                if let cipher = key[plugboard] {
                    encryptedChar = cipher.encrypt(encryptedChar)
                } else {
                    validChar = false
                }
                
                if(encryptedChar == "") {
                    validChar = false
                }
                
                //If valid char, add to encrypted message
                if(validChar) {
                    encryptedMessage += encryptedChar + seperator
                    continue
                }
            }
            
            //If we get to this point, `char` is not in the valid alphabet or `char` is somehow not valid.
            if(unknownSymbolHandling == .Ignore && String(char) != seperator) {
                encryptedMessage += String(char)
            } else if(unknownSymbolHandling == .Replace) {
                encryptedMessage += replaceUnknownSymbolWith
            }
        }
        
        return encryptedMessage
    }
    
    //Decrypting is the same as encrypting since each letter maps to another, different letter, and vice versa. Thus if 'A' goes to 'D' then 'D' would go to 'A'.
    public override func decrypt(_ ciphertext: String) -> String {
        return self.encrypt(ciphertext)
    }
    
    private func rotateRotors() {
        for rotor in rotors.reversed() {
            if let cipher = key[rotor] {
                if cipher is Rotor {
                    let turnOver = (cipher as! Rotor).rotate()
                    if(!turnOver) {
                        return
                    }
                }
            }
        }
    }
    
}


///CS
