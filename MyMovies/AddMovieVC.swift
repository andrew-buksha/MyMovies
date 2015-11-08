//
//  AddMovieVC.swift
//  MyMovies
//
//  Created by Андрей Букша on 08.11.15.
//  Copyright © 2015 Андрей Букша. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieYear: UITextField!
    @IBOutlet weak var movieGenre: UITextField!
    @IBOutlet weak var imdbLink: UITextField!
    @IBOutlet weak var kinopoiskLink: UITextField!
    @IBOutlet weak var moviePlot: UITextField!
    @IBOutlet weak var movieLike: UITextField!
    @IBOutlet weak var movieImg: UIImageView!
    
    var imagePicker: UIImagePickerController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        movieImg.layer.cornerRadius = 5.0
        movieImg.clipsToBounds = true

    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addImage(sender: AnyObject!) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func createMovie(sender: AnyObject!) {
        if let title = movieTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            movie.title = title
            movie.year = movieYear.text
            movie.genre = movieGenre.text
            movie.imdb = imdbLink.text
            movie.kinopoisk = kinopoiskLink.text
            movie.plot = moviePlot.text
            movie.like = movieLike.text
            movie.setMovieImg(movieImg.image!)
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Failed to save movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }

}
