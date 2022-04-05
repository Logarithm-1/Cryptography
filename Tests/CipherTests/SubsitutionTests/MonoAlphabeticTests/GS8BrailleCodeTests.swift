import XCTest
@testable import Cryptography

final class GS8BrailleCodeTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(GS8BrailleCode())
    }
    
    func testEncrypt() {
        if let cipher = GS8BrailleCode() {
            XCTAssertEqual(cipher.encrypt("Hello World"), "⡓⠑⠇⠇⠕ ⡺⠕⠗⠇⠙")
        }
    }
}
