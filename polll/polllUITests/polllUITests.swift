//
//  polllUITests.swift
//  polllUITests
//
//  Created by VEENA on 20/01/21.
//

import XCTest

class polllUITests: XCTestCase {

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

        let app = XCUIApplication()
        app.launch()
      
      //let app = XCUIApplication()
      app.tables.staticTexts["sa"].tap()
      app.alerts["Simplified iOS"].scrollViews.otherElements.buttons["Close Alert"].tap()
      
       XCTAssertTrue(app.tables.staticTexts["sa"].exists)
      
      
      app.tables.cells.staticTexts["sa"].tap()
      XCTAssertTrue(app.alerts["Simplified iOS"].scrollViews.otherElements.buttons["Close Alert"].exists)
      app.alerts["Simplified iOS"].scrollViews.otherElements.buttons["Close Alert"].tap()
      XCTAssertFalse(app.alerts["Simplified iOS"].scrollViews.otherElements.buttons["Close Alert"].exists)
      
    }

    
}
