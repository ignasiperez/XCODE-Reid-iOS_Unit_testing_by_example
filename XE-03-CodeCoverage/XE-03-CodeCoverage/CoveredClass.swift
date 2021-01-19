//
//  CoveredClass.swift
//  XE-03-CodeCoverage
//
//  Created by ignasiperez.com on 16/01/2021.
//

import UIKit

class CoveredClass {
  
  
  
  // MARK: - 3.8. Cover Statements in a Sequence
  
  private(set) var area: Int
  
  var width: Int {
    didSet {
      area = width * width
      let color: UIColor = redOrGreen(for: width)
      drawSquare(width: width, color: color)
    }
  }
  
  
  init() {
    area = 0
    width = 0
  }
  
  
  private func redOrGreen(for width: Int) -> UIColor {
    width % 2 == 0 ? .red : .green
  }
  
  
  private func drawSquare(width: Int, color: UIColor) {
    // ...
  }
  
  
  
  // MARK: - 3.1. Code Coverage
  
  static func max(_ x: Int, _ y: Int) -> Int {
    if x < y {
      return y
    } else {
      return x
    }
  }
  
  
  
  // MARK: - 3.7. Cover a Loop
  static func commaSeparated(from: Int,
                             to: Int) -> String {
    
    var result = ""
    
    for i in from..<to {
      result += "\(i),"
    }
    
    result  += "\(to)"
    
    return result
  }

}

