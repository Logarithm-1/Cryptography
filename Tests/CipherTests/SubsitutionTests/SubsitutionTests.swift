import XCTest
@testable import Cryptography

final class SubsitutionTests: XCTestCase {
    //MARK: - Empty Key
    /// If there is a empty key, the init should not return nil
    func testInitWithEmptyKey() {
        XCTAssertNotNil(Subsitution(key: [:]))
    }
    
    func testInitPerformanceInitWithEmptyKey() {
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = Subsitution(key: [:])
        }
    }
    
    /// If there is a empty key, the cipher text should be the same as the plain text.
    func testEncryptWithEmptyKey() {
        if let cipher = Subsitution(key: [:]) {
            XCTAssertEqual(cipher.encrypt("AABBCC"), "AABBCC")
        }
    }
    
    func testEncryptPerformanceInitWithEmptyKey() {
        let cipher = Subsitution(key: [:])!
        
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = cipher.encrypt("Hello, World")
        }
    }
    
    /// If there is a empty key, the plain text should be the same as the cipher text.
    func testDecryptWithEmptyKey() {
        if let cipher = Subsitution(key: [:]) {
            XCTAssertEqual(cipher.decrypt("AABBCC"), "AABBCC")
        }
    }
    
    func testDecryptPerformanceInitWithEmptyKey() {
        let cipher = Subsitution(key: [:])!
        
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = cipher.decrypt("Hello, World")
        }
    }
    
    //MARK: - One Value In Key
    /// If there is one value in the key, the init should not return nil
    func testInitWithOneValueInKey() {
        XCTAssertNotNil(Subsitution(key: ["A" : "A"]))
        XCTAssertNotNil(Subsitution(key: ["A" : "B"]))
    }
    
    func testMono() {
        let cipher = Subsitution(key: ["A" : "𝙰", "B" : "𝙱", "C" : "𝙲", "D" : "𝙳", "E" : "𝙴", "F" : "𝙵", "G" : "𝙶", "H" : "𝙷", "I" : "𝙸", "J" : "𝙹", "K" : "𝙺", "L" : "𝙻", "M" : "𝙼", "N" : "𝙽", "O" : "𝙾", "P" : "𝙿", "Q" : "𝚀", "R" : "𝚁", "S" : "𝚂", "T" : "𝚃", "U" : "𝚄", "V" : "𝚅", "W" : "𝚆", "X" : "𝚇", "Y" : "𝚈", "Z" : "𝚉"])
        
        if let cipher = cipher {
            let mess = cipher.encrypt("HOSTILE FORCE ESTIMATED AT ONE REGIMENT INFANTRY AND TWO PLATOONS CAVALRY MOVING SOUTH ON QUINNIMONT PIKE STOP HEAD OF COLUMN NEARING ROAD JUNCTION SEVEN COMMA EAST OF GREENACRE SCHOOL FIRED UPON BY OUR PATROLS STOP HAVE DESTROYED BRIDGE OVER INDIAN CREEK.")
            print(mess)
        }
    }
    
    func testInitPerformanceInitWithOneValueInKey() {
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = Subsitution(key: ["A" : "B"])
        }
    }
    
    /// If there is a one value in the key, the cipher text should only have that one value changed.
    func testEncryptWithOneValueInKey() {
        if let cipher = Subsitution(key: ["A" : "B"]) {
            XCTAssertEqual(cipher.encrypt("AABBCC"), "BBBBCC")
        }
    }
    
    func testEncryptPerformanceInitWithOneValueInKey() {
        let cipher = Subsitution(key: ["A" : "B"])!
        
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = cipher.encrypt("Hello, World")
        }
    }
    
    /// If there is a one value in the key, the plain text should only have that one value changed.
    func testDecryptWithOneValueInKey() {
        if let cipher = Subsitution(key: ["A" : "B"]) {
            XCTAssertEqual(cipher.decrypt("AABBCC"), "AAAACC")
        }
    }
    
    func testDecryptPerformanceInitWithOneValueInKey() {
        let cipher = Subsitution(key: ["A" : "B"])!
        
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = cipher.decrypt("Hello, World")
        }
    }
    
    //MARK: - Two Values in Key
    /// If there is two different value's in the key, the init should not return nil
    func testInitWithTwoValuesInKey() {
        XCTAssertNotNil(Subsitution(key: ["A" : "B", "B" : "C"]))
    }
    
    func testInitPerformanceInitWithTwoValuesInKey() {
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = Subsitution(key: ["A" : "B"])
        }
    }
    
    /// If there is two different value's in the key, the cipher text should only have those two values changed.
    func testEncryptWithTwoValuesInKey() {
        if let cipher = Subsitution(key: ["A" : "B", "B" : "C"]) {
            XCTAssertEqual(cipher.encrypt("AABBCC"), "BBCCCC")
        }
    }
    
    func testEncryptPerformanceInitWithTwoValuesInKey() {
        let cipher = Subsitution(key: ["A" : "B", "B" : "C"])!
        
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = cipher.encrypt("Hello, World")
        }
    }
    
    /// If there is a one value in the key, the plain text should only have that one value changed.
    func testDecryptWithTwoValuesInKey() {
        if let cipher = Subsitution(key: ["A" : "B", "B" : "C"]) {
            XCTAssertEqual(cipher.decrypt("AABBCC"), "AAAABB")
        }
    }
    
    func testDecryptPerformanceInitWithTwoValuesInKey() {
        let cipher = Subsitution(key: ["A" : "B", "B" : "C"])!
        
        measure(
            metrics: [
              XCTClockMetric(),
              XCTCPUMetric(),
              XCTStorageMetric(),
              XCTMemoryMetric()
            ]
        ) {
            let _ = cipher.decrypt("Hello, World")
        }
    }
    
    //MARK: - Two Same Values in Key
    func testInitWithTwoSameValueInKey() {
        //XCTAssertNotNil(Subsitution(key: ["A" : "B", "A" : "C"])) -> Fatel Error
        XCTAssertNil(Subsitution(key: ["A" : "B", "C" : "B"]))
    }
    
    
    func testEncryptWithDifferentSizeKeys() {
        if let cipher = Subsitution(key: ["A" : "B", "BB" : "C", "C" : "D"]) {
            XCTAssertEqual(cipher.encrypt("AABBCC"), "BBCDD")
        }
    }
}
