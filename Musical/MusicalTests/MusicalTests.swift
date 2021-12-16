//
//  MusicalTests.swift
//  MusicalTests
//
//  Created by VEENA on 21/02/21.
//

import XCTest
@testable import Musical



class MusicalTests: XCTestCase {
  
  enum Music {
    case melody
    case rhythm
    case dance
    case mood
  }
  

    func testExample() throws {
      let classes = MusicClasses()
      XCTAssertTrue(classes.practiseRegularly())

    }
  
  func testPlistLoading() {
       let classes = MusicClasses()
       print(classes.loadingFromThePlistFiles()!)
       XCTAssertNotNil(classes.loadingFromThePlistFiles()!)
       
     }
   
  func testPractiseOdeToJoy_slowTempo() {
    let classes = MusicClasses()
    XCTAssertTrue(classes.practiseOdeToJoy_slowTempo())
  }
  
  
  
}
