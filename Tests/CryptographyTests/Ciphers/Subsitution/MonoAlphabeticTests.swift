import XCTest
@testable import Cryptography

final class MonoAlphabeticTests: XCTestCase {
    let validKeyOne: String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let validKeyTwo: String = "AZERTYUIOPQSDFGHJKLMWXCVBN"
    
    /// If there is a empty key, the init should  return nil
    func testInitWithEmptyKey() {
        XCTAssertNil(MonoAlphabetic(key: [String]()))
    }
    
    //MARK: - Valid Key One
    func testInitWithValidKeyOne() {
        XCTAssertNotNil(MonoAlphabetic(key: validKeyOne))
    }
    
    //MARK: - Valid Key Two
    func testInitWithValidKeyTwo() {
        XCTAssertNotNil(MonoAlphabetic(key: validKeyTwo))
    }
    
    func testEncryptWithValidKeyTwo() {
        if let cipher = MonoAlphabetic(key: validKeyTwo) {
            XCTAssertEqual(cipher.encrypt("Hello World"), "ITSSG CGKSR")
        }
    }
}
