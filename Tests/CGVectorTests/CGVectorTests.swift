import XCTest
@testable import CGVector

final class CGVectorTests: XCTestCase {
  struct kd: Vector {
    var components: [Float]
    init(components: [Float]) {
      self.components = components
    }
  }

  func testAdditionAgainstLowerDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) + kd(components: [3]),
      kd(components: [4, 2])
    )
  }

  func testMultiplicationAgainstLowerDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) * kd(components: [3]),
      kd(components: [3, 0])
    )
  }

  func testSubtractionAgainstLowerDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) - kd(components: [3]),
      kd(components: [-2, 2])
    )
  }

  func testDivisionAgainstLowerDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) / kd(components: [2]),
      kd(components: [0.5, kd.Scalar.infinity])
    )
  }

  func testAdditionAgainstSameDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) + kd(components: [3, 4]),
      kd(components: [4, 6])
    )
  }

  func testMultiplicationAgainstSameDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) * kd(components: [3, 4]),
      kd(components: [3, 8])
    )
  }

  func testSubtractionAgainstSameDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) - kd(components: [3, 4]),
      kd(components: [-2, -2])
    )
  }

  func testDivisionAgainstSameDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) / kd(components: [2, 4]),
      kd(components: [0.5, 0.5])
    )
  }

  func testAdditionAgainstHigherDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) + kd(components: [3, 4, 5]),
      kd(components: [4, 6, 5])
    )
  }

  func testMultiplicationAgainstHigherDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) * kd(components: [3, 4, 5]),
      kd(components: [3, 8, 0])
    )
  }

  func testSubtractionAgainstHigherDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) - kd(components: [3, 4, 5]),
      kd(components: [-2, -2, -5])
    )
  }

  func testDivisionAgainstHigherDimensionalVector() {
    XCTAssertEqual(
      kd(components: [1, 2]) / kd(components: [2, 4, 5]),
      kd(components: [0.5, 0.5, 0])
    )
  }

  func testAdditionAgainstScalar() {
    XCTAssertEqual(
      kd(components: [1, 2]) + 3,
      kd(components: [4, 5])
    )
  }

  func testMultiplicationAgainstScalar() {
    XCTAssertEqual(
      kd(components: [1, 2]) * 3,
      kd(components: [3, 6])
    )
  }

  func testSubtractionAgainstScalar() {
    XCTAssertEqual(
      kd(components: [1, 2]) - 3,
      kd(components: [-2, -1])
    )
  }

  func testDivisionAgainstScalar() {
    XCTAssertEqual(
      kd(components: [1, 2]) / 2,
      kd(components: [0.5, 1])
    )
  }

  static var allTests = [
    ("testAdditionAgainstLowerDimensionalVector", testAdditionAgainstLowerDimensionalVector),
    ("testMultiplicationAgainstLowerDimensionalVector", testMultiplicationAgainstLowerDimensionalVector),
    ("testSubtractionAgainstLowerDimensionalVector", testSubtractionAgainstLowerDimensionalVector),
    ("testDivisionAgainstLowerDimensionalVector", testDivisionAgainstLowerDimensionalVector),
    ("testAdditionAgainstSameDimensionalVector", testAdditionAgainstSameDimensionalVector),
    ("testMultiplicationAgainstSameDimensionalVector", testMultiplicationAgainstSameDimensionalVector),
    ("testSubtractionAgainstSameDimensionalVector", testSubtractionAgainstSameDimensionalVector),
    ("testDivisionAgainstSameDimensionalVector", testDivisionAgainstSameDimensionalVector),
    ("testAdditionAgainstHigherDimensionalVector", testAdditionAgainstHigherDimensionalVector),
    ("testMultiplicationAgainstHigherDimensionalVector", testMultiplicationAgainstHigherDimensionalVector),
    ("testSubtractionAgainstHigherDimensionalVector", testSubtractionAgainstHigherDimensionalVector),
    ("testDivisionAgainstHigherDimensionalVector", testDivisionAgainstHigherDimensionalVector),
    ("testAdditionAgainstScalar", testAdditionAgainstScalar),
    ("testMultiplicationAgainstScalar", testMultiplicationAgainstScalar),
    ("testSubtractionAgainstScalar", testSubtractionAgainstScalar),
    ("testDivisionAgainstScalar", testDivisionAgainstScalar),
  ]
}
