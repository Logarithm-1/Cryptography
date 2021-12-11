//
//  File.swift
//  
//
//  Created by Logan Richards on 12/11/21.
//

import Foundation

///

public final class August : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 1, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class CDCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 1, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class JailCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 2, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class EllenCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 2, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class Cicerone : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 3, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class CutieCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 3, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class EiffelCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 6, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class WCCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 6, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class EmptyCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 7, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class BodenPowell : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 14, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class AnyCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 17, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class SeeYouCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 18, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class ISeeCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 20, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class EasyCode : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 21, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

public final class Ceasar : CaesarShift {
    public init?(caseSensitive: Bool, memorizeCase: Bool, unknownSymbolHandling: UnknownSymbolHandlingMode, createNGroups: Int?) {
        super.init(shift: 2, caseSensitive: caseSensitive, memorizeCase: memorizeCase, unknownSymbolHandling: unknownSymbolHandling, createNGroups: createNGroups)
    }
    
    public convenience init?() {
        self.init(caseSensitive: false, memorizeCase: false, unknownSymbolHandling: .Ignore, createNGroups: nil)
    }
}

//TODO: CEASAR (with a wrong spelling) where E=A or A=E, the shift is either +4 or -4 (=22)
//Any 2-letter code that can give an association between a crypted char and the plain one (see gramograms)
//ROT13 code, the shift is 13 and reversible
//ROT5 code for digits, the shift is 5 and reversible
//ROT47 code for ASCII printable characters, the shift is 47 and reversible
//
