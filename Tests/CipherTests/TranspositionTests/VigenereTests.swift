import XCTest
@testable import Cryptography

final class VigenereTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(Vigenere(phraseKey: "cipher"))
    }
    
    func testEncrypt() {
        if let cipher = Vigenere(phraseKey: "cipher") {
            XCTAssertEqual(cipher.encrypt("Cryptography PolyAlphabetic Substitution Cipher Vigenere"), "Eznwxfizpwlp RwafEcrppiikkk Hbfjvqibxzqv Rptygz Kpkvpmgl".uppercased())
        }
    }
    
    func testDecrypt() {
        if let cipher = Vigenere(phraseKey: "cipher") {
            XCTAssertEqual(cipher.decrypt("Eznwxfizpwlp RwafEcrppiikkk Hbfjvqibxzqv Rptygz Kpkvpmgl"), "Cryptography PolyAlphabetic Substitution Cipher Vigenere".uppercased())
        }
    }
}
