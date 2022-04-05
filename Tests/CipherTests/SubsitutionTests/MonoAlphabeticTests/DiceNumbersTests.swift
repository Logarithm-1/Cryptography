import XCTest
@testable import Cryptography

final class DiceNumbersTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(DiceNumbers())
    }
    
    func testEncrypt() {
        if let cipher = DiceNumbers() {
            XCTAssertEqual(cipher.encrypt("123456"), "⚀⚁⚂⚃⚄⚅")
        }
    }
    
    func testDecrypt() {
        if let cipher = DiceNumbers() {
            XCTAssertEqual(cipher.decrypt("⚀⚁⚂⚃⚄⚅"), "123456")
        }
    }
}
