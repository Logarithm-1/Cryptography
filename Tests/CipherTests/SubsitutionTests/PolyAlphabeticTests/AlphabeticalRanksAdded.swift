import XCTest
@testable import Cryptography

final class AlphabeticalRanksAddedTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(AlphabeticalRanksAdded(startIndex: 1))
    }
    
    func testEncrypt() {
        if let cipher = AlphabeticalRanksAdded(startIndex: 1) {
            XCTAssertEqual(cipher.encrypt("Cryptography Substitution Cipher Alphabetic Transcription"), "3 21 46 62 82 97 104 122 123 139 147 172 191 212 214 233 253 262 282 303 323 332 347 361 364 373 389 397 402 420 421 433 449 457 458 460 465 485 494 497 515 516 530 541 560 561 565 569 574 578")
        }
    }
    
    func testDecrypt() {
        if let cipher = AlphabeticalRanksAdded(startIndex: 1) {
            XCTAssertEqual(cipher.decrypt("3 21 46 62 82 97 104 122 123 139 147 172 191 212 214 233 253 262 282 303 323 332 347 361 364 373 389 397 402 420 421 433 449 457 458 460 465 485 494 497 515 516 530 541 560 561 565 569 574 578"), "Cryptography Substitution Cipher Alphabetic Transcription")
        }
    }
}
