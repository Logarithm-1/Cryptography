import XCTest
@testable import Cryptography

final class ConsonantsVowelsRankTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(ASCIIShift(shift: 5))
    }
    
    func testEncrypt() {
        if let cipher = ASCIIShift(shift: 5) {
            XCTAssertEqual(cipher.encrypt("HELLO"), "MJQQT")
        }
    }
    
    func testDecrypt() {
        if let cipher = ASCIIShift(shift: 5) {
            XCTAssertEqual(cipher.decrypt("MJQQT"), "HELLO")
        }
    }
}
