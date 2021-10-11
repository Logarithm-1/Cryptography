import XCTest
@testable import Cryptography

final class SubsitutionTests: XCTestCase {
    func testValidateKey() {
        var cipher = Subsitution(key: ["A" : "B", "C" : "B", "D" : "C"])
        
        XCTAssertThrowsError(try cipher.validateKey())
        XCTAssertThrowsError(try cipher.encrypt("AABBCC"))
        XCTAssertThrowsError(try cipher.decrypt("BBCCDD"))
        
        cipher = Subsitution(key: ["A" : "B", "B" : "C", "C" : "D"])
        XCTAssertNoThrow(try cipher.validateKey())
        XCTAssertNoThrow(try cipher.encrypt("AABBCC"))
    }
    
    func testEncryptPlaintext() {
        var cipher = Subsitution(key: ["A" : "B", "B" : "C", "C" : "D"])
        
        XCTAssertNoThrow(try cipher.encrypt("AABBCC"))
        XCTAssertEqual(try cipher.encrypt("AABBCC"), "BBCCDD")
        
        cipher = Subsitution(key: ["A" : "B", "B" : "C", "C" : "D", "BB" : "Q"])
        
        XCTAssertNoThrow(try cipher.encrypt("AABBCC"))
        XCTAssertEqual(try cipher.encrypt("AABBCC"), "BBQDD")
        
        cipher = Subsitution(key: ["A" : "B", "B" : "C", "C" : "D", "BB" : "QQ"])
        
        XCTAssertNoThrow(try cipher.encrypt("AABBCC"))
        XCTAssertEqual(try cipher.encrypt("AABBCC"), "BBQQDD")
    }
    
    func testDecryptPlaintext() {
        var cipher = Subsitution(key: ["A" : "B", "B" : "C", "C" : "D"])
        
        XCTAssertNoThrow(try cipher.decrypt("BBCCDD"))
        XCTAssertEqual(try cipher.decrypt("BBCCDD"), "AABBCC")
        
        cipher = Subsitution(key: ["A" : "B", "B" : "C", "C" : "D", "BB" : "Q"])
        
        XCTAssertNoThrow(try cipher.decrypt("BBQDD"))
        XCTAssertEqual(try cipher.decrypt("BBQDD"), "AABBCC")
        
        cipher = Subsitution(key: ["A" : "B", "B" : "C", "C" : "D", "BB" : "QQ"])
        
        XCTAssertNoThrow(try cipher.decrypt("BBQQDD"))
        XCTAssertEqual(try cipher.decrypt("BBQQDD"), "AABBCC")
    }
    
    func testCrackKey() {
        
    }
}
