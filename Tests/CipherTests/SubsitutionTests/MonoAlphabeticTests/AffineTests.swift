import XCTest
@testable import Cryptography

final class AffineTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(Affine(a: 3, b: 1))
    }
    
    func testEncrypt() {
        if let cipher = Affine(a: 3, b: 1) {
            XCTAssertEqual(cipher.encrypt("Cryptography Substitution Cipher Affine"), "Havugrtabuwv Djedgzgjgzro Hzuwna Bqqzon".uppercased())
        }
    }
    
    func testDecrypt() {
        if let cipher = Affine(a: 3, b: 1) {
            XCTAssertEqual(cipher.decrypt("Havugrtabuwv Djedgzgjgzro Hzuwna Bqqzon"), "Cryptography Substitution Cipher Affine".uppercased())
        }
    }
}
