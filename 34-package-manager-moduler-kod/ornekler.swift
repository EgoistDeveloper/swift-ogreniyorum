// Sources/Matematik/Matematik.swift
public struct Matematik {
    public static func topla(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    public static func carp(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
}

// Tests/MatematikTests/MatematikTests.swift
import XCTest
@testable import Matematik

final class MatematikTests: XCTestCase {
    func testTopla() {
        XCTAssertEqual(Matematik.topla(2, 3), 5)
    }
    func testCarp() {
        XCTAssertEqual(Matematik.carp(2, 3), 6)
    }
}
