import XCTest
@testable import Cryptography

final class ASCIITests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(ASCII())
    }
    
    func testEncrypt() {
        if let cipher = ASCII() {
            XCTAssertEqual(cipher.encrypt("Hello World"), "72 101 108 108 111 32 87 111 114 108 100 ")
        }
    }
    
    func testDecrypt() {
        if let cipher = ASCII() {
            XCTAssertEqual(cipher.decrypt("72 101 108 108 111 32 87 111 114 108 100"), "H e l l o   W o r l d ")
        }
    }
}
