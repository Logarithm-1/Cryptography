import XCTest
@testable import Cryptography

final class ASCIITests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(ASCII())
    }
    
    func testEncrypt() {
        if let cipher = ASCII() {
            XCTAssertEqual(cipher.encrypt("Hello World"), "SVOOL DLIOW")
        }
    }
    
    func testDecrypt() {
        if let cipher = ASCII() {
            XCTAssertEqual(cipher.decrypt("SVOOL DLIOW"), "HELLO WORLD")
        }
    }
}
