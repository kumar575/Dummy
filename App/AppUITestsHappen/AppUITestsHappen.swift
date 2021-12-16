//
//  AppUITestsHappen.swift
//  AppUITestsHappen
//
//  Created by VEENA on 28/01/21.
//

import XCTest

class AppUITestsHappen: XCTestCase {
  let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        
      app.launch()
      app.textFields["name"].tap()
      XCTAssertTrue(app.textFields["name"].exists)
      app.textFields["password"].tap()
      XCTAssertTrue(app.textFields["password"].exists)

    }
  
  func testNextVC() {
    
    app.launch()
    app/*@START_MENU_TOKEN@*/.staticTexts["Next"]/*[[".buttons[\"Next\"].staticTexts[\"Next\"]",".staticTexts[\"Next\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

    app.textFields["name"].tap()
    XCTAssertTrue(app.textFields["name"].exists)
    let textfield = app.textFields["name"]
    textfield.typeText("username")

  }
  
  func testNextVC2() {
    
    app.launch()
    app/*@START_MENU_TOKEN@*/.staticTexts["Next"]/*[[".buttons[\"Next\"].staticTexts[\"Next\"]",".staticTexts[\"Next\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

    app.textFields["name"].tap()
    XCTAssertTrue(app.textFields["name"].exists)
    let textfield = app.textFields["name"]
    textfield.typeText("use")

  }
  
  func testNextVC3() {
    
    app.launch()
    app/*@START_MENU_TOKEN@*/.staticTexts["Next"]/*[[".buttons[\"Next\"].staticTexts[\"Next\"]",".staticTexts[\"Next\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

    app.textFields["name"].tap()
    XCTAssertTrue(app.textFields["name"].exists)
    let textfield = app.textFields["name"]
    textfield.typeText("username 90909090909009090909090909090909090909090909090909090909090909090909")

  }
  
  func testNextVC4() {
    
    app.launch()
    app/*@START_MENU_TOKEN@*/.staticTexts["Next"]/*[[".buttons[\"Next\"].staticTexts[\"Next\"]",".staticTexts[\"Next\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

    app.textFields["name"].tap()
    XCTAssertTrue(app.textFields["name"].exists)
    let textfield = app.textFields["name"]
    textfield.typeText("username 800878979870970970987098709879807089798070897089790870987890709790879870987098709709870987098798-7-987098709870987098709870987089789079807809709870987098")

  }
  

    
}
