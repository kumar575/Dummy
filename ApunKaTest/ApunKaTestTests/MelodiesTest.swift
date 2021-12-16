//
//  MelodiesTest.swift
//  ApunKaTestTests
//
//  Created by VEENA on 11/12/20.
//MelodiesTest

import XCTest

@testable import ApunKaTest

class MelodiesTest: XCTestCase {
  
  func testBeginnerMelody() {
    var melody = [Pitch]()
    melody = ["F4", "E4", "F4", "G4", "F4", "E4", "D4"]
    let lastmelody : [Pitch] = ["F4", "F4", "D4", "F4"]
    let finalmelody = melody + lastmelody
    XCTAssertNotNil(finalmelody)
  }
  
  func testThisBoleroMelody() {
    var melody = [Pitch]()
    melody = ["B3", "A2", "G#2", "A3"]
    XCTAssertNotNil(melody)

//    let rhythmBox = RhythmBox(bpm: 120, timeSignature: (4,4))
   // XCTAssertNotNil(rhythmBox)
    let p1: Pitch = "f#-5"
    XCTAssert(p1.key === Key(type: .f, accidental: .sharp))
    XCTAssert(p1.octave == -5)
    
  }
  
  func testThisNonBoleroMelody() {
    let p: Pitch = "f#-5"
    XCTAssert(p.key === Key(type: .f, accidental: .sharp))
    XCTAssert(p.octave == -5)

    let uppercasePitch: Pitch = "A#3"
    XCTAssert(uppercasePitch.key === Key(type: .a, accidental: .sharp))
    XCTAssert(uppercasePitch.octave == 3)

    let uppercasePitch2: Pitch = "F4"
    XCTAssert(uppercasePitch2.key === Key(type: .f, accidental: .natural))
    XCTAssert(uppercasePitch2.octave == 4)
  }
  
}


//   let rhythmBox = RhythmBox(bpm: 120, timeSignature: (4,4))
//    rhythmBox.perform {CurrentBeat, CurrentSubBeat, CurrentNote in
//
//        print("CurrentBeat", CurrentBeat)
//        print("CurrentSubBeat", CurrentSubBeat)
//
//        return .resume
//    }
