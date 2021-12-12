import XCTest
@testable import Cryptography

final class AtbashTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(Atbash())
    }
    
    func testEncrypt() {
        if let cipher = Atbash() {
            XCTAssertEqual(cipher.encrypt("Hello World"), "SVOOL DLIOW")
        }
    }
    
    func testDecrypt() {
        if let cipher = Atbash() {
            XCTAssertEqual(cipher.decrypt("SVOOL DLIOW"), "HELLO WORLD")
        }
    }
}
