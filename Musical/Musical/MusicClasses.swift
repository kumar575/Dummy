//
//  MusicClasses.swift
//  Musical
//
//  Created by VEENA on 26/02/21.
//

import Foundation

public protocol Transposable {
    /// Returns self transposed by the given semitone distance
    func transpose(_ semitones: Float) -> Self
}



protocol ViolinTarget {
  func practiseSlurs()
  func practiseRegularly() -> Bool
}

protocol GuitarTarget {
  func practiseAndCompleteLevel1() -> NSDateInterval
  func practiseEarTraining() -> Bool
}

struct MusicClasses: ViolinTarget, GuitarTarget {
  func practiseAndCompleteLevel1() -> NSDateInterval {
    return NSDateInterval(start: Date.init(), duration: 12)
  }
  
  func practiseEarTraining() -> Bool {
    return true
  }
  
  func practiseSlurs() {
    print("Yes i will")
  }
  
  func practiseRegularly() -> Bool {
    return true
  }
  
  func practiseOdeToJoy_slowTempo() -> Bool {
    return true
  }
  
  
  func practiseOdeToJoy_fastTempo() -> Bool {
    return false
  }
  
  func loadingFromThePlistFiles() -> NSDictionary? {
    var myDict: NSDictionary?
    if let path = Bundle.main.path(forResource: "Motel", ofType: "plist") {
      if (NSDictionary(contentsOfFile: path) as? Dictionary<String, AnyObject>) != nil {
        myDict = NSDictionary(contentsOfFile: path)
      }
    }
 return myDict
  }
}
