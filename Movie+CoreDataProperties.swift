//
//  Movie+CoreDataProperties.swift
//  MyMovies
//
//  Created by Андрей Букша on 07.11.15.
//  Copyright © 2015 Андрей Букша. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var genre: String?
    @NSManaged var year: String?
    @NSManaged var imdb: String?
    @NSManaged var kinopoisk: String?
    @NSManaged var plot: String?
    @NSManaged var like: String?

}
