import XCTest
@testable import Cryptography

final class BaconTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(Bacon())
    }
    
    func testEncrypt() {
        if let cipher = Bacon(seperator: " ") {
            XCTAssertEqual(cipher.encrypt("Cryptography Substitution Cipher Bacon"), "AAABA BAAAA BABBA ABBBA BAABA ABBAB AABBA BAAAA AAAAA ABBBA AABBB BABBA BAAAB BAABB AAAAB BAAAB BAABA ABAAA BAABA BAABB BAABA ABAAA ABBAB ABBAA AAABA ABAAA ABBBA AABBB AABAA BAAAA AAAAB AAAAA AAABA ABBAB ABBAA")
        }
    }
    
    func testDecrypt() {
        if let cipher = Bacon(seperator: " ") {
            XCTAssertEqual(cipher.decrypt("AAABA BAAAA BABBA ABBBA BAABA ABBAB AABBA BAAAA AAAAA ABBBA AABBB BABBA BAAAB BAABB AAAAB BAAAB BAABA ABAAA BAABA BAABB BAABA ABAAA ABBAB ABBAA AAABA ABAAA ABBBA AABBB AABAA BAAAA AAAAB AAAAA AAABA ABBAB ABBAA"), "Cryptography Substitution Cipher Bacon")
        }
    }
}
