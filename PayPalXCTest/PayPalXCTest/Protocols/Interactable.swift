//
//  Interactable.swift
//  PayPalXCTest
//
//  Created by VEENA on 22/01/21.
//

import XCTest

// default implementations for common xc test interactions . like tapping on buttons, scrolling lists, Please use this protocol together with your screen
// public struct SendMoney: Interactable { }
public protocol Interactable {
  static func tapOn(_ element: XCUIElement) -> Self.Type
}

public extension Interactable {
  @discardableResult
  static func tapOn(_ element: XCUIElement) -> Self.Type {
    XCTAssert(element.exists)
    element.tap()
    return Self.self
  }
}

