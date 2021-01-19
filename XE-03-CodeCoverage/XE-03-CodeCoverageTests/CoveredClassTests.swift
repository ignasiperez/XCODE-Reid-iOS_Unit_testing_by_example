//
//  CoveredClassTests.swift
//  XE-03-CodeCoverageTests
//
//  Created by ignasiperez.com on 16/01/2021.
//

@testable import XE_03_CodeCoverage
import XCTest

class CoveredClassTests: XCTestCase {

  
  
  // MARK: - 3.1. Code Coverage
  
  func test_max_with1And2_shouldReturn2() {
    let result = CoveredClass.max(1, 2)
    
//    XCTAssertEqual failed: ("2") is not equal to ("-123")
//    XCTAssertEqual(result, -123)
    
    XCTAssertEqual(result, 2)
  }
  
  
  func test_max_with3And2_shouldReturn3() {
    let result = CoveredClass.max(3, 2)
    
    XCTAssertEqual(result, 3)
  }
  
  
  
  // MARK: - 3.7. Cover a Loop
  
  // 1. Assertion I'm confident will fail
//  func test_commaSeparated_from2to4_shhouldReturnSomething() {
//    let result = CoveredClass.commaSeparated(from: 2, to: 4)
//
//    XCTAssertEqual(result, "FOO")
//  }
  
  
  // 2. Plug "2,3,4" into the assertion
  func test_commaSeparated_from2to4_shhouldReturn2345SeparatedByCommas() {
    let result = CoveredClass.commaSeparated(from: 2, to: 4)
    
    XCTAssertEqual(result, "2,3,4")
  }
  
  
  // 3. Function’s behavior when it loops zero times
//  func test_commaSeparated_from2to2_shouldReturnsomething() {
//    let result = CoveredClass.commaSeparated(from: 2, to: 2)
//
//    XCTAssertEqual(result, "FOO")
//  }
  
  
  // 4. Plug "2" into the assertion
  func test_commaSeparated_from2to2_shouldReturn2WithNoCommas() {
    let result = CoveredClass.commaSeparated(from: 2, to: 2)
    
    XCTAssertEqual(result, "2")
  }

  
  
  // MARK: - 3.8. Cover Statements in a Sequence
  
  // 1. Assertion I'm confident will fail
//  func test_area_withWidth7_shouldBeSomething() {
//    let sut = CoveredClass()
//
//    sut.width = 7
//
//    XCTAssertEqual(sut.area, -1)
//  }
  
  
  // 2. Plug 49 into the assertion
  func test_area_withWidth7_shouldBe49() {
    let sut = CoveredClass()
    
    sut.width = 7
    
    XCTAssertEqual(sut.area, 49)
  }
  
  
  

  
  
  
  
  
//  func test_zero() {
//    XCTFail("Tests not yet implemented in CoveredClassTests")
//  }
}
