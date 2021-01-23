//
//  StoryboardBasedVCTests.swift
//  LoadViewControllersTests
//
//  Created by ignasiperez.com on 23/01/2021.
//

@testable import LoadViewControllers
import XCTest

class StoryboardBasedVCTests: XCTestCase {

  func test_loading() {
    let sb = UIStoryboard(name: "Main",
                          bundle: nil)
    
    let sut: StoryboardBasedVC = sb.instantiateViewController(
      identifier: String(describing: StoryboardBasedVC.self))
    
    sut.loadViewIfNeeded()
    
    XCTAssertNotNil(sut.label)
  }
  
  
  
//  func test_zeo() {
//    XCTFail("Tests not yet implemented in StoryboardBasedVCTests")
//  }

}
