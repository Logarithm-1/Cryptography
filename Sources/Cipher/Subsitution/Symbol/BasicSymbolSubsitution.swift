// BasicSymbolSubsitution.swift
//
// This source file is part of the Swift Math open source project.
//
// Copyright (c) 2022 Logan Richards and the Swift Math project authors.
// Licensed under MIT
//
// See https://github.com/Logarithm-1/Cryptography/blob/main/LICENSE for license information

import Foundation

//MARK: - Can be done with ASCII
//TODO: Gold Bug Cipher 3‡0†2?3
//TODO: Inuktitut Language
//TODO: Tom Tom Code ///\\/

//MARK: - Not So Basic Symbol Subsitution (i.e. have to figure this shit out)
//TODO: 7-Segment Display
//TODO: Acéré Cipher
//TODO: Astronomical Symbol
//TODO: Babylonian Numerals: Base 60
//TODO: Braille Alphabet
//TODO: Cistercian Monk Numerals
//TODO: Clock Cipher
//TODO: Egyptian Numerals: Base 10 + Additive
//TODO: Elder Futhark ᚠᚢᚦᚨᚱᚲ
//TODO: Enochian Alphabet
//TODO: French Sign Language
//TODO: Ideograms Cipher (Lines, Circles, Dots)
//TODO: Knots Notation
//TODO: Mary Stuart Code
//TODO: Mayan Numerals
//TODO: Mirror Digits: Two Different Sets?
//TODO: Music Sheet Cipher
//TODO: Music Staff Notation
//TODO: Navy Signals Code
//TODO: Pigpen Cipher: Has 8 Vairents
//TODO: StarTrek_KlingonLanguage: ["'", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "ch", "D", "e", "ng", "gh", "h", "i", "j", "Q", "l", "m", "n", "o", "p", "q", "r", "S", "t", "u", "v", "w", "", "y", "tlh"]
//TODO: Tally Marks: Two Types
//TODO: Younger Futhark ᚠᚢᚦᚬᚱᚴ
//TODO: Zodiac Killer Cipher

//MARK: - Unsorted
public final class AlphaAngleSystemBranding : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "alphaAngleSystemBranding", alphabet: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], caseSensitive: true, memorizeCase: true, addSpace: true)
    }
}

public final class AmericanSignLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "americanSignLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false, addSpace: true)
    }
}

public final class Betamaze : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "betamaze", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], caseSensitive: false, memorizeCase: false, addSpace: true)
    }
}

public final class BirdsOnAWire : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "birdsOnAWire", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false, addSpace: true)
    }
}

public final class ChineseCode : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "ChineseCode", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false, addSpace: true)
    }
}

public final class DaggersAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "daggersAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false, addSpace: true)
    }
}

public final class DancingMen : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "dancingMen", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], caseSensitive: true, memorizeCase: false, addSpace: true)
    }
}

public final class Dorabella : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "dorabella", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class DotsiesFont : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "dotsiesFont", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class FlagSemaphore : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "flagSemaphore", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Friderici : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "friderici", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

/// - Note: Has Two space, Why? I don't Know
public final class Hexahue : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "hexahue", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ".", ",", " ", " "], caseSensitive: false, memorizeCase: false)
    }
}

public final class HymnosAlphabet : SymbolSubsitution {
    public init?(caseSensitive: Bool = true, memorizeCase: Bool = false) {
        super.init(imagePostName: "hymnosAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], caseSensitive: true, memorizeCase: false)
    }
}

public final class ITCZapfDingbats : SymbolSubsitution {
    public init?(caseSensitive: Bool = true, memorizeCase: Bool = false) {
        super.init(imagePostName: "ITCZapfDingbats", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], caseSensitive: true, memorizeCase: false)
    }
}

public final class IokharicLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "iokharicLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], caseSensitive: false, memorizeCase: false)
    }
}

/// - Note: `I` = `J` and `U` = `V`
public final class LinguaIgnota : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "linguaIgnota", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class LunarAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "lunarAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "Ñ"], caseSensitive: false, memorizeCase: false)
    }
}

/// - Note: Can go vertical, horizontal
/// - Note: Can be done in UNICODE (Horizontal only though)
public final class OghamAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "oghamAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "y", "z", "UI", "AE", "EA", "IA", "OI", "UI", "AE", "EA", "IA", "OI"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Rosicrucian : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "rosicrucian", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class SamuraiAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "samuraiAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class SemaphoreTrousers : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "semaphoreTrousers", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

/// - Note: Might be able to be done in UNICODE
public final class SymbolFont : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "symbolFont", alphabet: ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "T", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~"], caseSensitive: true, memorizeCase: false)
    }
}

public final class Templars : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "templars", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class ThebanAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "thebanAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "."], caseSensitive: false, memorizeCase: false)
    }
}

public final class TicTacToe : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "ticTacToe", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "_"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Voynich : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "voynich", alphabet: ["A", "F", "H", "I", "K", "O", "P", "S", "T", "Y", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y", "z"], caseSensitive: true, memorizeCase: false)
    }
}

/// - NOTE: Might Be able to be done in UNICODE
public final class Microsoft_WebdingsFont : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "microsoft_webdingsFont", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], caseSensitive: true, memorizeCase: false)
    }
}

/// - NOTE: Might Be able to be done in UNICODE
public final class Microsoft_Wingdings2Font : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "microsoft_wingdings2Font", alphabet: ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~"], caseSensitive: true, memorizeCase: false)
    }
}

/// - NOTE: Can be done in UNICODE
public final class Microsoft_Wingdings3Font : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "microsoft_wingdings3Font", alphabet: ["!", "\"", "#", "$", "%", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "[", "\\", "]", "^", "_", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "{", "|", "}", "~"], caseSensitive: true, memorizeCase: false)
    }
}

//TODO: Wingdings Font


//MARK: - From TV Shows/Films/Books
public final class ArtemisFowl_GnommishLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "artemisFowl_gnommishLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", ".", " "], caseSensitive: false, memorizeCase: false)
    }
}


public final class ArthurAndTheInvisibles_Alphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "arthurAndTheInvisibles_alphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Atlantis_AtlanteanLanguage: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "atlantis_atlanteanLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "CH", "SH", "TH"], caseSensitive: false, memorizeCase: false)
    }
}

public final class ElderScrolls_DaedricLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "elderScrolls_daedricLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class ElderScrolls_DraconicLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "elderScrolls_draconicLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "AA", "EI", "II", "AH", "UU", "UR", "IR", "OO", "EY"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Futurama_AlienAlphabet: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "futurama_alienAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], caseSensitive: false, memorizeCase: false)
    }
}

public final class GravityFalls_Author : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "gravityFalls_author", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class GravityFalls_BillCipher : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "gravityFalls_billCipher", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Pokemon_UnownAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "ticTacToe", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "!", "?"], caseSensitive: false, memorizeCase: false)
    }
}

public final class SimCity_Simlish : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "simCity_simlish", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], caseSensitive: true, memorizeCase: false)
    }
}

/// - Note: Shows up in multiple games
public final class StandardGalacticAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "standardGalacticAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "."], caseSensitive: false, memorizeCase: false)
    }
}

public final class Stargate_AncientsAlphabet: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "starget_ancientsAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], caseSensitive: false, memorizeCase: false)
    }
}

public final class StarWars_AurebeshAlphabet: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "starWars_aurebeshAlphabet", alphabet: ["!", "$", "?", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "AE", "CH", "EO", "KH", "NG", "OO", "SH", "TH"], caseSensitive: false, memorizeCase: false)
    }
}

public final class StarTrek_VulcanLanguage: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "starTrek_vulcanLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_GerudoLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_gerudoLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_GoronLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_goronLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "#", "$", "(", ")", ",", "-", ".", ":", ";", "?", "~"], caseSensitive: true, memorizeCase: false)
    }
}

public final class Zelda_HylianLanguage_ALinkBetweenWorlds : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_hylianLanguage_aLinkBetweenWorlds", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_HylianLanguage_BreathOfTheWild : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_hylianLanguage_breathOfTheWild", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_HylianLanguage_SkywardSword : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_hylianLanguage_skywardSword", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_HylianLanguage_TheWindWaker: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_hylianLanguage_theWindWaker", alphabet: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "I", "U", "E", "O", "KA", "GA", "KI", "GI", "KU", "GU", "KE", "GE", "KO", "GO", "SA", "ZA", "SHI", "JI", "SU", "ZU", "SE", "ZE", "SO", "ZO", "TA", "DA", "CHI", "JI", "TSU", "ZU", "TE", "DE", "TO", "DO", "NA", "NI", "NU", "NE", "NO", "HA", "BA", "PA", "HI", "BI", "PI", "FU", "BU", "PU", "HE", "BE", "PE", "HO", "BO", "PO", "MA", "MI", "MU", "ME", "MO", "YA", "YU", "YO", "RA", "RI", "RU", "RE", "RO", "WA", "WO", "N"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_HylianLanguage_TwilightPrincess: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_hylianLanguage_twilightPrincess", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_SheikahLanguage: SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_sheikahLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "!", "-", ".", "?"], caseSensitive: false, memorizeCase: false)
    }
}
