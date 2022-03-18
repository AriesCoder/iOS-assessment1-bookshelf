//
//  BookController.swift
//  BookShelf
//
//  Created by Aries Lam on 3/17/22.
//

import Foundation
class BookController{
    static var books: [Book]{
        let daVinci = Book(title: "Da Vinci", author: "Dan Brown", image: "DaVinciCode", releaseDate: "Mar-18-2003", description: "The Da Vinci Code follows 'symbologist' Robert Langdon and cryptologist Sophie Neveu after a murder in the Louvre Museum in Paris causes them to become involved in a battle between the Priory of Sion and Opus Dei over the possibility of Jesus Christ and Mary Magdalene having had a child together.")
        let lostSymbol = Book(title: "The Lost Symbol", author: "Dan Brown", image: "LostSymbol", releaseDate: "Sep-15-2009", description: "it is the third Brown novel to involve the character of Harvard University symbologist Robert Langdon, following 2000's Angels & Demons and 2003's The Da Vinci Code.[2] It had a first printing of 6.5 million (5 million in North America, 1.5 million in the UK), the largest in Doubleday history. On its first day the book sold one million in hardcover and e-book versions in the U.S., the UK and Canada, making it the fastest selling adult novel in history.[5] It was number one on the New York Times Best Seller list for...")
        let angelsAndDemons = Book(title: "Angels And Demons", author: "Dan Brown", image: "AngelsDemons", releaseDate: "May-03-2005", description: "World-renowned Harvard symbologist Robert Langdon is summoned to a Swiss research facility to analyze a cryptic symbol seared into the chest of a murdered physicist. What he discovers is unimaginable: a deadly vendetta against the Catholic Church by a centuries-old underground organization -- the Illuminati. In a desperate race to save the Vatican from a powerful time bomb ...")
        let origin = Book(title: "Origin", author: "Dan Brown", image: "origin", releaseDate: "Oct-03-2017", description: "Origin is a 2017 mystery thriller novel by American author Dan Brown and the fifth installment in his Robert Langdon series, following Inferno. The book was released on October 3, 2017, by Doubleday. The book is predominantly set in Spain and features minor sections in Sharjah and Budapest")
        let decepPoint = Book(title: "Deception Point", author: "Dan Brown", image: "dp", releaseDate: "Apr 1 2001", description: "Deception Point is a 2001 mystery-thriller novel by American author Dan Brown. It is Brown's third novel. It was published by Simon & Schuster. The novel follows White House intelligence analyst Rachel Sexton's involvement in corroborating NASA's discovery of a meteorite...")
        
        return [daVinci, lostSymbol, angelsAndDemons, origin, decepPoint]
    }
}
