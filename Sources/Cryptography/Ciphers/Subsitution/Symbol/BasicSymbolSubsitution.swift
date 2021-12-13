//
//  File.swift
//  
//
//  Created by Logan Richards on 12/13/21.
//

import Foundation

//MARK: - Can be done with ASCII
//TODO: Gold Bug Cipher 3‡0†2?3

//MARK: - Not Basic Symbol Subsitution (i.e. have to figure this shit out)
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
//TODO: StarTrek_KlingonLanguage: ["'", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "ch", "D", "e", "ng", "gh", "h", "i", "j", "Q", "l", "m", "n", "o", "p", "q", "r", "S", "t", "u", "v", "w", "", "y", "tlh"]



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

//TODO: Ideograms Cipher (Lines, Circles, Dots)
//TODO: Inuktitut Language

public final class IokharicLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "iokharicLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], caseSensitive: false, memorizeCase: false)
    }
}

//TODO: Knots Notation
//TODO: Lingua Ignota
//TODO: Lunar Alphabet (L. Katz)
//TODO: Mary Stuart Code
//TODO: Mayan Numerals
//TODO: Mirror Digits
//TODO: Music Sheet Cipher
//TODO: Music Staff Notation
//TODO: Navy Signals Code
//TODO: Ogham Alphabet
//TODO: Pigpen Cipher
//TODO: Rosicrucian Cipher

public final class SamuraiAlphabet : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "samuraiAlphabet", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}


//TODO: Semaphore Trousers Cipher
//TODO: Sheikah Language
//TODO: Simlish Language
//TODO: Standard Galactic Alphabet
//TODO: Symbol Font
//TODO: Tally Marks
//TODO: Templars Cipher
//TODO: Theban Alphabet
//TODO: Tic-Tac-Toe Cipher
//TODO: Tom Tom Code ///\\/
//TODO: Unown Pokemon Alphabet
//TODO: Voynich Cipher
//TODO: Vulcan Language (Star Trek)
//TODO: Webdings Font
//TODO: Wingdings 2 Font
//TODO: Wingdings 3 Font
//TODO: Wingdings Font
//TODO: Younger Futhark ᚠᚢᚦᚬᚱᚴ
//TODO: Zodiac Killer Cipher
//TODO: Zodiac Sign


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

public final class Zelda_GerudoLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_gerudoLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], caseSensitive: false, memorizeCase: false)
    }
}

public final class Zelda_GoronLanguage : SymbolSubsitution {
    public init?() {
        super.init(imagePostName: "zelda_goronLanguage", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "!", "#", "$", "(", ")", ",", "-", ".", ":", ";", "?", "~"], caseSensitive: true, memorizeCase: false)
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
