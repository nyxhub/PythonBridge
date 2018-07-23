import XCTest
@testable import PythonBridge

final class PythonBridgeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PythonBridge().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
