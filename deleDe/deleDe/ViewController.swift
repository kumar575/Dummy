//
//  ViewController.swift
//  deleDe
//
//  Created by VEENA on 15/04/21.
//

import UIKit

class ViewController: UIViewController, CAAnimationDelegate {
  var myView: UIView!
  var shapeLayer: CAShapeLayer!

  override func viewDidLoad() {
    super.viewDidLoad()
//    let frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 100, height: 100))
    myView = UIView(frame: CGRect.zero)
    myView.backgroundColor = .white
    myView.layer.backgroundColor = UIColor.white.cgColor
    print("the view is \(myView.bounds.size.width)")
    let shapeLayer = CAShapeLayer()
    view.addSubview(myView)
    view.layer.addSublayer(shapeLayer)
   
    
//    myView.translatesAutoresizingMaskIntoConstraints = true
////    NSLayoutConstraint.activate(myView.leadingAnchor.constraints(isEqual(self.view.leadingAnchor)
////                                )
//
//    let constant: CGFloat = 100.0
//    NSLayoutConstraint.activate([myView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//                                 myView.topAnchor.constraint(equalTo: self.view.bottomAnchor)
//
//
//    ])
//
//    let jump = CASpringAnimation(keyPath: "transform.scale")
//    jump.damping = 10
//    jump.mass = 1
//    jump.initialVelocity = 100
//    jump.stiffness = 1500.0
//
//    jump.fromValue = 1.0
//    jump.toValue = 2.0
//    jump.duration = jump.settlingDuration
//    myView.layer.add(jump, forKey: nil)
    
    let animation = CABasicAnimation(keyPath: "position.y")
    animation.delegate = self
    animation.fromValue = CGPoint.zero
    animation.toValue = view.bounds.size.width
    animation.duration = 0.5
    animation.beginTime = CACurrentMediaTime() + 0.3
    animation.repeatCount = 4
    animation.autoreverses = true
    let image = UIImage(imageLiteralResourceName: "opera.png")
    let imageView = UIImageView(image: image)
    myView.addSubview(imageView)
    myView.layer.add(animation, forKey: nil)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    let path = UIBezierPath()
    path.move(to: view.center)
    path.addCurve(to: view.center, controlPoint1: CGPoint(x: 103.64, y: 26.83), controlPoint2: CGPoint(x: 98.21, y: 29.46))
    path.lineWidth = 2
    
    //shapeLayer.fillColor = UIColor.green.cgColor
    //shapeLayer.strokeColor = UIColor.blue.cgColor
    shapeLayer.path = path.cgPath
    
    path.addCurve(to: view.center, controlPoint1: CGPoint(x: 193.64, y: 261.83), controlPoint2: CGPoint(x: 198.21, y: 229.46))

  }
//
  func animationDidStart(_ anim: CAAnimation) {
  print("animation did start")
  }
  
  func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
    print("animation did finish")
//    let alert = UIAlertController(title: "yes", message: "no", preferredStyle: .alert)
//    self.present(alert, animated: true, completion: nil)
  }
  
  


}

