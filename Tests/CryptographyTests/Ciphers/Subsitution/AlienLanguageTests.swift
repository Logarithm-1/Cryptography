import XCTest
@testable import Cryptography

final class AlienLanguageTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(AlienLanguage())
    }
    
    func testEncrypt() {
        if let cipher = AlienLanguage() {
            XCTAssertEqual(cipher.encrypt("HELLO WORLD"), "⊑⟒⌰⌰⍜ ⍙⍜⍀⌰⎅")
        }
    }
    
    func testDecrypt() {
        if let cipher = AlienLanguage() {
            XCTAssertEqual(cipher.decrypt("⊑⟒⌰⌰⍜ ⍙⍜⍀⌰⎅"), "HELLO WORLD")
        }
    }
}
