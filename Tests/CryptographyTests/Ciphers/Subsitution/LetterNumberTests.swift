import XCTest
@testable import Cryptography

final class LetterNumberTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(LetterNumber(startIndex: 0))
    }
    
    func testEncrypt() {
        if let cipher = LetterNumber(startIndex: 0) {
            XCTAssertEqual(cipher.encrypt("Hello World"), "7 4 11 11 14 22 14 17 11 3 ")
        }
    }
    
    func testDecrypt() {
        if let cipher = LetterNumber(startIndex: 0) {
            XCTAssertEqual(cipher.decrypt("7 4 11 11 14  22 14 17 11 3"), "H E L L O W O R L D ")
        }
    }
}
