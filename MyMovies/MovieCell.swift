//
//  MovieCell.swift
//  MyMovies
//
//  Created by Андрей Букша on 07.11.15.
//  Copyright © 2015 Андрей Букша. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieGenre: UILabel!
    @IBOutlet weak var movieImg: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        movieYear.text = movie.year
        movieGenre.text = movie.genre
        movieImg.image = movie.getMovieImg()
    }


}
