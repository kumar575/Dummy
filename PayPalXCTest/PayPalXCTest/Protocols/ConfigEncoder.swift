//
//  ConfigEncoder.swift
//  PayPalXCTest
//
//  Created by VEENA on 22/01/21.
//

import Foundation

public struct ConfigEncoder {
  public static let launchEnvironmentKey = "CONFIGS"
  public let configs: [String: String]
  private static let encoder: JSONEncoder = {
    let encoder = JSONEncoder()
    encoder.keyEncodingStrategy = .convertToSnakeCase
    return encoder
  }()
  
  public init(_ dict: [String: String]) throws {
    self.configs = dict
  }
  
  public func encode() throws -> [String: String] {
    let encodedData = try Self.encoder.encode(configs)
    guard let stringedData = String(data: encodedData, encoding: .utf8) else { return [:] }
    return [ConfigEncoder.launchEnvironmentKey: stringedData]
  }
}
