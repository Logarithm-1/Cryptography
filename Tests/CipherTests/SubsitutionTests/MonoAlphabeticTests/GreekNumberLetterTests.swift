import XCTest
@testable import Cryptography

final class GreekNumberLetterTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(GreekNumberLetter())
    }
    
    func testEncrypt() {
        if let cipher = Atbash() {
            XCTAssertEqual(cipher.encrypt("Hello World"), "SVOOL DLIOW")
        }
    }
}
