//
//  ViewController.swift
//  Musically_Violin
//
//  Created by VEENA on 21/03/21.
//

import UIKit

class ViewController: UIViewController {

  var countdownTimer : Timer?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    nonsense()
  }

  func nonsense() {
    DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
        self.beginBackgroundTask()
      self.countdownTimer = Timer.scheduledTimer(timeInterval: 180, target: self, selector: #selector(self.requestService), userInfo: nil, repeats: true)
      RunLoop.current.add(self.countdownTimer!, forMode: .common)
        RunLoop.current.run()
    }
  }
  
  func beginBackgroundTask() {
    
  }
  
  @objc func requestService() {
    
  }

}

