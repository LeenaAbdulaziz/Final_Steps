//
//  MovieDetailsViewController.swift
//  Final_Steps
//
//  Created by Linah abdulaziz on 18/05/1443 AH.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    
    
   
    @IBOutlet weak var titelLabel: UILabel!
    
    @IBOutlet weak var relaseLabel: UILabel!
    @IBOutlet weak var diroctorLabel: UILabel!
    @IBOutlet weak var crawlLabel: UILabel!
    var film : film?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let currentFilm = film {
            
            titelLabel.text = "Title: \(currentFilm.title)"
            
            relaseLabel.text = "ReleaseDate: \(currentFilm.releaseDate)"
            
            diroctorLabel.text =  "Director: \(currentFilm.director) "
            
            crawlLabel.text = "Crawl: \(currentFilm.openingCrawl)"
            
                }

    }
    


}
