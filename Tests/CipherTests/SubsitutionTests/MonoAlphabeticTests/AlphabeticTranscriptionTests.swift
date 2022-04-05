import XCTest
@testable import Cryptography

final class AlphabeticTranscriptionTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(CSMASCIIShift(shift: 5))
    }
    
    func testEncrypt() {
        if let cipher = CSMASCIIShift(shift: 5) {
            XCTAssertEqual(cipher.encrypt("Cryptography Substitution Cipher Alphabetic Transcription"), "ABCDEFGBHDICJKLMENEKENFOANDIPBQRDIHLPENSTBHOMSBNDENFO")
        }
    }
    
    func testDecrypt() {
        if let cipher = CSMASCIIShift(shift: 5) {
            XCTAssertEqual(cipher.decrypt("ABCDEFGBHDICJKLMENEKENFOANDIPBQRDIHLPENSTBHOMSBNDENFO"), "Cryptography Substitution Cipher Alphabetic Transcription")
        }
    }
}
