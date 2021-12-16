//
//  EnvironmentConfiguration.swift
//  PayPalXCTest
//
//  Created by VEENA on 22/01/21.
//

import XCTest

extension XCUIApplication {
  // automatically enocodes your configs and sets up your launch Environment for XCUITesting.
  public func setUp(configs: [String: String]) {
    do {
      let configEncoder = try ConfigEncoder(configs)
      let dict = try configEncoder.encode()
      self.launchEnvironment.merge(dict) { $1 }
    } catch {
      print("Error", error)
    }
  }
}
