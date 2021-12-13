import XCTest
@testable import Cryptography

final class SymbolSubsitutionTests: XCTestCase {
    /// Should always return not nil
    func testInit() {
        XCTAssertNotNil(SymbolSubsitution(imagePostName: "a", alphabet: ["0"]))
    }
    
    func testEncrypt() {
        if let cipher = SymbolSubsitution(imagePostName: "image", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]) {
            XCTAssertEqual(cipher.encrypt("HELLO WORLD"), "image.H image.E image.L image.L image.O space image.W image.O image.R image.L image.D ")
            XCTAssertEqual(cipher.encrypt("Hello World"), ["image.H", "image.E", "image.L", "image.L", "image.O", "space", "image.W", "image.O", "image.R", "image.L", "image.D"])
        }
    }
    
    func testDecrypt() {
        if let cipher = SymbolSubsitution(imagePostName: "image", alphabet: ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]) {
            XCTAssertEqual(cipher.decrypt("image.H image.E image.L image.L image.O space image.W image.O image.R image.L image.D "), "HELLO WORLD")
        }
    }
}
