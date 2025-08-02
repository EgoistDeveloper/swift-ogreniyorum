import XCTest

// Test edilen fonksiyon
func faktoriyel(_ n: Int) -> Int {
    if n == 0 { return 1 }
    return n * faktoriyel(n-1)
}

// Test sınıfı
class MatematikTestleri: XCTestCase {
    func testToplama() {
        let sonuc = 2 + 2
        XCTAssertEqual(sonuc, 4)
    }

    func testFaktoriyel() {
        XCTAssertEqual(faktoriyel(5), 120)
        XCTAssertEqual(faktoriyel(0), 1)
        XCTAssertEqual(faktoriyel(1), 1)
    }
}

// Testleri çalıştırmak için (Playground'da veya CLI'da)
MatematikTestleri.defaultTestSuite.run()