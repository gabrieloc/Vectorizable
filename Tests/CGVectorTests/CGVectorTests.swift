import XCTest
@testable import CGVector

final class CGVectorTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CGVector().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
