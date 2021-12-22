//
//  PeopleDetailsViewController.swift
//  Final_Steps
//
//  Created by Linah abdulaziz on 18/05/1443 AH.
//

import UIKit

class PeopleDetailsViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!
    
    var person : Person?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let currentperson = person {
            
            detailsLabel.text = "name: \(currentperson.name)\n gender: \(currentperson.gender)\n birthYear: \(currentperson.birthYear) \n  mass: \(currentperson.mass)"
                }
    }
    


}
