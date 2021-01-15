//
//  MyClassTests.swift
//  XE-02-LifeCycleTests
//
//  Created by ignasiperez.com on 14/01/2021.
//

@testable import XE_02_LifeCycle
import XCTest


class MyClassTests: XCTestCase {

//  func test_zero() {
//    XCTFail("Tests not yet implemented in MyClassTests")
//  }
  
  func test_methodOne() {
    let sut = MyClass()
    
    sut.methodOne()
    
    XCTFail("Failed, yo")
  }
  
  
  func test_methodTwo() {
    let sut = MyClass()
    
    sut.methodTwo()
    
    // Normally, assert something
  
  }

}
