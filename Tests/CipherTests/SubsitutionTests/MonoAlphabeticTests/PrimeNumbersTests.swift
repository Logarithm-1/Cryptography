import XCTest
@testable import Cryptography

final class PrimeNumbersTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(PrimeNumbers())
    }
    
    func testEncrypt() {
        if let cipher = PrimeNumbers() {
            XCTAssertEqual(cipher.encrypt("Cryptography Substitution Cipher Prime Numbers"), "5 61 97 53 71 47 17 61 2 53 19 97 67 73 3 67 71 23 71 73 71 23 47 43 5 23 53 19 11 61 53 61 23 41 11 43 73 41 3 11 61 67 ")
        }
    }
    
    func testDecrypt() {
        if let cipher = PrimeNumbers() {
            XCTAssertEqual(cipher.decrypt("5 61 97 53 71 47 17 61 2 53 19 97 67 73 3 67 71 23 71 73 71 23 47 43 5 23 53 19 11 61 53 61 23 41 11 43 73 41 3 11 61 67"), "C r y p t o g r a p h y S u b s t i t u t i o n C i p h e r P r i m e N u m b e r s ".uppercased())
        }
    }
}
