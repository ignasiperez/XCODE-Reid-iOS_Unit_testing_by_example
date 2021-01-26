//
//  CodeBasedVCTests.swift
//  LoadViewControllersTests
//
//  Created by ignasiperez.com on 26/01/2021.
//

@testable import LoadViewControllers
import XCTest

class CodeBasedVCTests: XCTestCase {

  func test_loading() {
    let sut = CodeBasedVC(data: "DUMMY")
    
    sut.loadViewIfNeeded()
  }
  
  
//  func test_zero() {
//    XCTFail("Tests not yet implemented in CodeBasedVCTests")
//  }
    
}
