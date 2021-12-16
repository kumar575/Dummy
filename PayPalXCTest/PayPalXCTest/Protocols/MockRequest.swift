//
//  MockRequest.swift
//  PayPalXCTest
//
//  Created by VEENA on 22/01/21.
//

import Foundation

public protocol MockRequestProtocol {
  
  var url : URL { get }
  var httpMethod: HTTPMethod { get }
  var httpBody: Data? { get set }
  
}


