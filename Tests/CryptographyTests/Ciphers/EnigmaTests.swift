import XCTest
@testable import Cryptography

final class EnigmaTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(Enigma(rotors: ["I", "II", "III"], initalRotorPositions: ["A, A, A"], reflector: "B"))
    }
    
    func testEncrypt() {
        if let cipher = Enigma(rotors: ["I", "II", "III"], initalRotorPositions: ["A, A, A"], reflector: "B", unknownSymbolHandling: .Remove) {
            XCTAssertEqual(cipher.encrypt("Cryptography Substitution Cipher Enigma Machine"), "PSKNLQMFIAPIEBLRVDFPAOURPZNMCVAQMJIGPOZFAZH".uppercased())
        }
    }
    
    func testDecrypt() {
        if let cipher = Enigma(rotors: ["I", "II", "III"], initalRotorPositions: ["A, A, A"], reflector: "B") {
            XCTAssertEqual(cipher.decrypt("PSKNLQMFIAPIEBLRVDFPAOURPZNMCVAQMJIGPOZFAZH"), "CryptographySubstitutionCipherEnigmaMachine".uppercased())
        }
    }
}
