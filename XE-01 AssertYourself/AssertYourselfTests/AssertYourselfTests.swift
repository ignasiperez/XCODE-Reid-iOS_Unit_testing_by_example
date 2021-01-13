//
//  AssertYourselfTests.swift
//  AssertYourselfTests
//
//  Created by ignasiperez.com on 12/01/2021.
//

import XCTest
@testable import AssertYourself

class AssertYourselfTests: XCTestCase {

  func test_fail() {
    XCTFail()
  }
  
  
  
  // MARK: - Add a Descriptive Message
  
  func test_fail_withSimpleMessage() {
    XCTFail("We have a problem")
  }
  
  
  func test_fail_withInterpolateMessage() {
    let theAnswer = 42
    XCTFail("The Answer to the Great Question is \(theAnswer)")
  }
  
  
  
  // MARK: - Avoid Conditionals in Tests
  
  func test_avoidconditionalCode() {
    let success = false
    if !success {
      XCTFail()
    }
  }
  
  
  func test_assertTrue() {
    let success = false
    XCTAssertTrue(success)
  }
  
  
  func test_assertNil() {
    let optionalValue: Int? = 123
    XCTAssertNil(optionalValue)
  }
  
  
  
  // MARK: - Describe Objects upon Failure
  
  struct SimpleStruct {
    let x: Int
    let y: Int
  }
  
  
  func test_assertNil_withSimpleStruct() {
    let optionalValue: SimpleStruct? = SimpleStruct(x: 1, y: 2)
    XCTAssertNil(optionalValue)
  }
  
  
  
  struct StructWithDescription: CustomStringConvertible {
    let x: Int
    let y: Int
    
    var description: String { "\(x), \(y)"}
  }
  
  
  func test_assertNil_withSelfDescribingType() {
    let optionalValue: StructWithDescription = StructWithDescription(x: 1, y: 2)
    XCTAssertNil(optionalValue)
    
  }
  
  
  
  // MARK: - Test for Equality
  
  func test_assertEqual() {
    let actual = "actual"
    
    XCTAssertEqual(actual, "expected")
  }
  
  
  
  // MARK: - Test Equality with Optionals
  
  func test_assertEqual_withOptional() {
    let result: String? = "foo"
    
    XCTAssertEqual(result, "bar")
  }
  
  
  
  // MARK: - Fudge Equality with Doubles and Floats
  
  func test_floatingPointDanger() {
    let result = 0.1 + 0.2
    
    XCTAssertEqual(result, 0.3)
  }
  
  
  func test_floatingPointFixed() {
    let result = 0.1 + 0.2
    
    XCTAssertEqual(result, 0.3, accuracy: 0.0001)
  }
  
  
  
  // MARK: - Avoid Redundant Messages
  
  func test_messageOverKill() {
    let actual = "actual"
    
    XCTAssertEqual(actual,
                   "expected",
                   "Expected \"Expected\" but got \"\(actual)\"")
  }
  
}
