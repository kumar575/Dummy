//
//  ServiceTests.swift
//  ServiceTests
//
//  Created by VEENA on 21/01/21.
//

import XCTest
@testable import Service

class ServiceTests: XCTestCase {


    func testExample() throws {
    
      let presenter = Presenter()
      let expected = presenter.printPresenter()
      XCTAssertEqual("Presenter is online", expected )
      
    }

    

}
