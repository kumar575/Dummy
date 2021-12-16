//
//  ViewController.swift
//  Workhorse
//
//  Created by VEENA on 16/12/21.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {

  override func viewDidLoad() {
    
    let text = NSTextField(labelWithString: "where is the demo")
    
    text.backgroundColor = .red
    text.font = NSFont.init(name: "Verdana", size: 23)
    text.alignmentRect(forFrame: NSRect(origin: CGPoint(x: 20, y: 20), size: CGSize(width: 600, height: 200)))
    self.view.addSubview(text)
    
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }
  
  func textField(_ textField: NSTextField, textView: NSTextView, candidatesForSelectedRange selectedRange: NSRange) -> [Any]? {
    return ["some", "where"]
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

