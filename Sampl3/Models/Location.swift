//
//  Location.swift
//  Sampl3
//
//  Created by VEENA on 26/02/21.
//

import Foundation
import CoreLocation

struct Location {
  let name: String
  let coordinate: CLLocationCoordinate2D?
  
  private let nameKey = "nameKey"
  private let latitudeKey = "latitudeKey"
  private let longitudeKey = "longitudeKey"
  
  var plistDict: [String: Any] {
    var dict = [String: Any]()
  }
  
}
