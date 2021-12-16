//
//  HappyTests.swift
//  HappyTests
//
//  Created by VEENA on 30/12/20.
//

import XCTest
@testable import Happy

class HappyTests: XCTestCase {
  let maxBestMood = 69
  func testTheTruth() {
    let life = Life(livingAge: 72)
    let joy =  Joy(mood: maxBestMood)
    let divine = Divine(isEssence: true)
    let happy = Happy(life: life, joy: joy, divine: divine)
   
    XCTAssertNotNil(joy)
  }
}

struct Life {
  var livingAge: Int
}

struct Happy {
  var life: Life
  var joy: Joy
  var divine: Divine
}

struct Joy {
  var mood: Int
}

struct Divine {
  var isEssence: Bool
}
