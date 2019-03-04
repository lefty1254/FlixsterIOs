//
//  MovieDetailsViewController.swift
//  FlixsterIOs
//
//  Created by Eleftherios Troullouris on 3/4/19.
//  Copyright © 2019 troullouris@hotmail.com. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    var movie: [String:Any]!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let title = movie["title"] as! String
        let synopsis = movie["overview"] as! String
        
        titleLabel.text = title
        titleLabel.sizeToFit()
        synopsisLabel.text = synopsis
        synopsisLabel.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w780"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterPath)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseURL + backdropPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        
        backdropView.af_setImage(withURL: backdropUrl!)
        
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
