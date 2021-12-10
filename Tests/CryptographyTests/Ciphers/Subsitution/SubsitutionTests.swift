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
    func testInitWithTwoValuesInKey() {
        XCTAssertNotNil(Subsitution(key: ["A" : "B", "B" : "C"]))
    }
    
    //MARK: - Two Same Values in Key
    func testInitWithTwoSameValueInKey() {
        //XCTAssertNotNil(Subsitution(key: ["A" : "B", "A" : "C"])) -> Fatel Error
        XCTAssertNil(Subsitution(key: ["A" : "B", "C" : "B"]))
    }
}
