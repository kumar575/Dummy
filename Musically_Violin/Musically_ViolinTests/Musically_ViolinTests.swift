//
//  Musically_ViolinTests.swift
//  Musically_ViolinTests
//
//  Created by VEENA on 21/03/21.
//

import XCTest
@testable import Musically_Violin

struct Violin {
  var play: Bool
  
  func canPlay() -> Bool {
    return true
  }
  
  func runForASlurredTriplets() -> Bool {
    return true
  }
  
  func heaven() -> Bool {
    return true 
  }
  
}

class Musically_ViolinTests: XCTestCase {

  func testcanPlay() {
    let violin = Violin(play: true)
    XCTAssertTrue(violin.canPlay())
  }
  
  func testheaven() {
    let violin = Violin(play: true)
    XCTAssertTrue(violin.heaven())
  }
  

}
