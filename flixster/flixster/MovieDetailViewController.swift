//
//  MovieDetailViewController.swift
//  flixster
//
//  Created by Sebastian Ruiz on 9/23/19.
//  Copyright © 2019 sbstn540. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailViewController: UIViewController{
    
   
    @IBOutlet weak var backdrop: UIImageView!
    
    @IBOutlet weak var movieposter: UIImageView!
    
    @IBOutlet weak var movietitle: UILabel!
    
    @IBOutlet weak var moviesynopsis: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        movietitle.text = movie["title"] as? String
        moviesynopsis.text = movie["overview"] as? String
        
        let baseUrl = "http://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)!
        
        movieposter.af_setImage(withURL: posterUrl)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)!
        
        backdrop.af_setImage(withURL: backdropUrl)
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
