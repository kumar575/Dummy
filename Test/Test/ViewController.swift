//
//  ViewController.swift
//  Test
//
//  Created by VEENA on 24/12/20.
//

import UIKit
import Cucumberish

class ViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var statePickerBtn: UIButton!
  @IBOutlet weak var textField: UITextFieldDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.white
  }
  
  @IBAction func stateBtnPressed(_ sender: AnyObject) {
    
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    super.touchesBegan(touches, with: event)
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return (true)
  }


}

