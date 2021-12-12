import XCTest
@testable import Cryptography

final class BaconTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(Bacon())
    }
    
    func testEncrypt() {
        if let cipher = Bacon(createNGroups: 5) {
            XCTAssertEqual(cipher.encrypt("ABC"), "AAAAA AAAAB AAABA")
        }
    }
}
