//
//  ViewController.swift
//  UdemySimpsonBook
//
//  Created by Kaan Yalçınkaya on 24.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson Object
        
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", SimpsonImage: UIImage(named: "homer,")!)
        
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "House Wife", SimpsonImage: UIImage(named: "marge")!)
        
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJob: "Student", SimpsonImage: UIImage(named: "lisa")!)
        
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonJob: "Student", SimpsonImage: UIImage(named: "bart")!)
        
        let meggie = Simpson(simpsonName: "Meggie Simpson", simpsonJob: "Babby", SimpsonImage: UIImage(named: "meggie")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(meggie)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpsons = chosenSimpson
        }
    }


}

