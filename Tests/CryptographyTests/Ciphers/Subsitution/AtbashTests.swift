import XCTest
@testable import Cryptography

final class AtbashTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(Atbash())
    }
    
    func testEncrypt() {
        if let cipher = Atbash() {
            XCTAssertEqual(cipher.encrypt("Cryptography Substitution Cipher Atbash"), "Xibkgltizksb Hfyhgrgfgrlm Xrksvi Zgyzhs")
        }
    }
    
    func testDecrypt() {
        if let cipher = Atbash() {
            XCTAssertEqual(cipher.decrypt("Xibkgltizksb Hfyhgrgfgrlm Xrksvi Zgyzhs"), "Cryptography Substitution Cipher Atbash")
        }
    }
}
