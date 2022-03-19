//
//  BookDetailViewController.swift
//  BookShelf
//
//  Created by Aries Lam on 3/17/22.
//

import UIKit
import Foundation

class BookDetailViewController: UIViewController{
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var releaseDayLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    var book: Book?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews(){
        guard let book = book else{return}
        titleLabel.text = book.title
        authorNameLabel.text = book.author
        imageLabel.image = UIImage(named: book.image)
        descriptionLabel.text = book.description
        descriptionLabel.layer.cornerRadius = 15.0
        
        //change "date" string to date format
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMddYYYY"
        guard let inputDate = dateFormatter.date(from: book.releaseDate) else {return}
        
        //format date to the way we want
        let newDateFormatter = DateFormatter()
        newDateFormatter.dateFormat = "MM-dd-YYYY"
        let date = newDateFormatter.string(from: inputDate)
        releaseDayLabel.text = date
    }
    
}

