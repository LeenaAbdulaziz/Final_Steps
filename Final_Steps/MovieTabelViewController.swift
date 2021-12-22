//
//  MovieViewController.swift
//  Final_Steps
//
//  Created by Linah abdulaziz on 18/05/1443 AH.
//

import UIKit

class MovieTabelViewController: UITableViewController {
    
    struct Film {
        var title:String
        var release_date:String
        var opening_crawl:String
        var director:String
    }
    
    
    
    let movieApi = "https://swapi.dev/api/films/?format=json"
    
    var movie: Films?

    override func viewDidLoad() {
        super.viewDidLoad()

      getallmovies()
        
        
            }
            
            func getallmovies() {
                ApiManager.getApiResponse(urlPath: movieApi) { data, error in
                    if error != nil {
                        print(error?.localizedDescription)
                    } else {
                        if let data = data {
                            self.movie = self.parseLogic(data: data)
                            
                            
                            DispatchQueue.main.async {
                                // main thread
                                self.tableView.reloadData()
                            }
                        }
                    }
                }
            }
            
            private func parseLogic(data:Data) -> Films? {
                do {
                    let movie = try JSONDecoder().decode(Films.self, from: data)

                    return movie
                } catch {
                    print(error.localizedDescription)
                    return nil
                }
            }


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.movie?.results.count ?? 0
        }

        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "moviecell", for: indexPath)

        cell.textLabel?.text = self.movie?.results[indexPath.row].title

            return cell
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           let destination = segue.destination as! MovieDetailsViewController
        let indexPath = sender as!  IndexPath
        destination.film = self.movie?.results[indexPath.row]
       }
       
       override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           performSegue(withIdentifier: "FilmDetails", sender: indexPath)
       }

}
