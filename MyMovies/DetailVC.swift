//
//  DetailVC.swift
//  MyMovies
//
//  Created by Андрей Букша on 08.11.15.
//  Copyright © 2015 Андрей Букша. All rights reserved.
//

import UIKit
import CoreData

class DetailVC: UIViewController {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieGenre: UILabel!
    @IBOutlet weak var imdbLink: UILabel!
    @IBOutlet weak var kpLink: UILabel!
    @IBOutlet weak var moviePlot: UILabel!
    @IBOutlet weak var movieLike: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    var movie: Movie!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTitle.text = movie.title
        movieYear.text = movie.year
        movieGenre.text = movie.genre
        imdbLink.text = movie.imdb
        kpLink.text = movie.kinopoisk
        moviePlot.text = movie.plot
        movieLike.text = movie.like
        movieImg.image = movie.getMovieImg()
        bgImg.image = movie.getMovieImg()
        
        movieImg.clipsToBounds = true
        bgImg.clipsToBounds = true
    }

}
