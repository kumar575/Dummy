//
//  ViewController.swift
//  polll
//
//  Created by VEENA on 20/01/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
    let sargam = [["sa", "re", "ga"], ["ma", "pa", "dha"], ["ni", "sa", "sa"], ["sa", "re", "ga"], ["ma", "pa", "dha"], ["ni", "sa", "sa"]]
    cell.textLabel?.text = sargam[indexPath.row][indexPath.section]

       return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let indexPath = tableView.indexPathForSelectedRow
            
            //getting the current cell from the index path
    let currentCell = tableView.cellForRow(at: indexPath!)! as UITableViewCell
            
            //getting the text of that cell
            let currentItem = currentCell.textLabel!.text
            
    let alertController = UIAlertController(title: "Simplified iOS", message: "You Selected " + currentItem! , preferredStyle: .alert)
    let defaultAction = UIAlertAction(title: "Close Alert", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
    present(alertController, animated: true, completion: nil)
  }
  
   func numberOfSections(in tableView: UITableView) -> Int {
          return 3
      }
  
   func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return "Section \(section)"
  }
  

  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CountryCell")
        
  }
}

