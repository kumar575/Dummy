//
//  MocableTest.swift
//  PayPalXCTest
//
//  Created by VEENA on 22/01/21.
//

import XCTest

public protocol MockableTest {
  // a current test is capable to run on a mock data
  var useMocks: Bool { get }
 // var mockResponses: [MockRequest: [MockResponse]] { get }
}
