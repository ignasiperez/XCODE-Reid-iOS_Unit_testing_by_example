//
//  MyClassTests.swift
//  XE-02-LifeCycleTests
//
//  Created by ignasiperez.com on 14/01/2021.
//

@testable import XE_02_LifeCycle
import XCTest


class MyClassTests: XCTestCase {

  private var sut: MyClass!
  
  
  override func setUp() {
    super.setUp()
    
    sut = MyClass()
  }
  
  
  override func tearDown() {
    sut = nil
    
    super.tearDown()
  }
  
  
  func test_methodOne() {
    sut.methodOne()
    
    // Normally, assert something
  }
  
  
  func test_methodTwo() {
    sut.methodTwo()
    
    // Normally, assert something
  }

}
