//
//  Assertable.swift
//  PayPalXCTest
//
//  Created by VEENA on 22/01/21.
//

import XCTest

public protocol Assertable {
  static func assertStaticText(_ element: XCUIElement, text: String?) -> Self.Type
  static func assertImage(_ element: XCUIElement) -> Self.Type
  static func assertButton(_ element: XCUIElement) -> Self.Type
  static func assertWebView(_ element: XCUIElement) -> Self.Type
  
}

public extension Assertable  {
  @discardableResult static func assertStaticText(_ element: XCUIElement, text: String?) -> Self.Type {
    XCTAssert(element.exists)
    if let text = text {
      XCTAssertEqual(element.label, text)
    }
    return Self.self
  }
  
  @discardableResult static func assertImage(_ element: XCUIElement) -> Self.Type {
    XCTAssert(element.exists)
    return Self.self
  }
  
  @discardableResult static func assertButton(_ element: XCUIElement) -> Self.Type {
    XCTAssert(element.exists)
    return Self.self
  }
  
  @discardableResult static func assertWebView(_ element: XCUIElement) -> Self.Type {
    XCTAssert(element.exists)
    return Self.self
  }
  
}
