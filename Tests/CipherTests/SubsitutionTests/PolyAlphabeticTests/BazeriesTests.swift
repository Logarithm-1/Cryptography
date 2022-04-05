import XCTest
@testable import Cryptography

final class BazeriesTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(CSMASCIIShift(shift: 5))
    }
    
    func testEncrypt() {
        if let cipher = CSMASCIIShift(shift: 5) {
            XCTAssertEqual(cipher.encrypt("HELLO"), "MJQQT")
        }
    }
    
    func testDecrypt() {
        if let cipher = CSMASCIIShift(shift: 5) {
            XCTAssertEqual(cipher.decrypt("MJQQT"), "HELLO")
        }
    }
}
