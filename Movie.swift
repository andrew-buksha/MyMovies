//
//  Movie.swift
//  MyMovies
//
//  Created by Андрей Букша on 07.11.15.
//  Copyright © 2015 Андрей Букша. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {
    
    func setMovieImg(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }


}
