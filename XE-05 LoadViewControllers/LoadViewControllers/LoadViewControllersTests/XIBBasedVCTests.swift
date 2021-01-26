//
//  XIBBasedVCTests.swift
//  LoadViewControllersTests
//
//  Created by ignasiperez.com on 26/01/2021.
//

@testable import LoadViewControllers
import XCTest


class XIBBasedVCTests: XCTestCase {

  func test_loading() {
    let sut = XIBBasedVC()
    
    sut.loadViewIfNeeded()
    
    XCTAssertNotNil(sut.label)
  }
  
  
//  func test_zero() {
//    XCTFail("Tests not yet implemented in XIBBasedVCTests")
//  }
    
}
