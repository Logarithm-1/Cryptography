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
    
    /// If there is a empty key, the plain texy should be the same as the cipher text.
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
    func testInitWithOneValueInKey() {
        XCTAssertNotNil(Subsitution(key: ["A" : "B"]))
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
