//
//  HTTPMethod.swift
//  PayPalXCTest
//
//  Created by VEENA on 22/01/21.
//

import Foundation

public enum HTTPMethod {
  case action(String)
  
  public static var GET: HTTPMethod { #function }
  public static var POST: HTTPMethod { #function }
  public static var PUT: HTTPMethod { #function }
  public static var DELETE: HTTPMethod { #function }
  public static var PATCH: HTTPMethod { #function }

}

// raw representable

extension HTTPMethod: RawRepresentable {
  
  public var rawValue: String {
    guard case HTTPMethod.action(let raw) = self else {
      return ""
    }
    return raw
  }
  
  public init?(rawValue: String) {
    self = .init(stringLiteral: rawValue)
  }
}

extension HTTPMethod: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .action(value)
  }
}

extension HTTPMethod: Equatable { }
extension HTTPMethod: Hashable { }
extension HTTPMethod: Codable { }


