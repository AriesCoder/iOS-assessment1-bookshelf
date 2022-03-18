//
//  Book.swift
//  BookShelf
//
//  Created by Aries Lam on 3/17/22.
//

import Foundation
class Book{
    var title: String
    var author: String
    var image: String
    var releaseDate: String
    var description: String
    
    init(title: String, author: String, image: String, releaseDate: String, description: String ){
        self.title = title
        self.author = author
        self.image = image
        self.releaseDate = releaseDate
        self.description = description
    }
}
