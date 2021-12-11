//
//  CaesarCodes.swift
//  
//
//  Created by Logan Richards on 12/11/21.
//

import Foundation

public final class August : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 1, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class CDCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 1, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class JailCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 2, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class EllenCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 2, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class Cicerone : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 3, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class CutieCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 3, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class EiffelCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 6, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class WCCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 6, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class EmptyCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 7, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class BodenPowell : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 14, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class AnyCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 17, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class SeeYouCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 18, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class ISeeCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 20, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

public final class EasyCode : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 21, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

//TODO: CEASAR (with a wrong spelling) where E=A or A=E, the shift is either +4 or -4 (=22)
public final class Ceasar : CaesarShift {
    public init?(caseSensitive: Bool = false, alphabet: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], memorizeCase: Bool = false, unknownSymbolHandling: UnknownSymbolHandlingMode = .Ignore, createNGroups: Int? = nil) {
        super.init(shift: 22, alphabet: alphabet, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
}

//Any 2-letter code that can give an association between a crypted char and the plain one (see gramograms)
//ROT13 code, the shift is 13 and reversible
//ROT5 code for digits, the shift is 5 and reversible
//ROT47 code for ASCII printable characters, the shift is 47 and reversible
