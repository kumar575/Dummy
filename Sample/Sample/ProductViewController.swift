//
//  ViewController.swift
//  Sample
//
//  Created by VEENA on 26/02/21.
//

import UIKit

class Product {
  var name: String?
  var cellImageName: String?
  var fullscreenImageName: String?
  
  init(name: String, cellImageName: String, fullscreenImageName: String) {
    self.name = name
    self.cellImageName = cellImageName
    self.fullscreenImageName = fullscreenImageName
  }
}

class ProductViewController: UIViewController {
  
  @IBOutlet var productImageView: UIImageView!
  @IBOutlet var productNameLabel: UILabel!
  
  var product: Product?

  override func viewDidLoad() {
    super.viewDidLoad()
    
    productNameLabel.text = product?.name
    if let imageName = product?.fullscreenImageName {
      productImageView.image = UIImage(named: imageName)
    }
    
  }
  
  @IBAction func addToCartButtonDidTap(_ sender: AnyObject) {
    print("add to cart successfully")
  }
}

