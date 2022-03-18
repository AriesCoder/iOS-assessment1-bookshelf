//
//  BookDetailViewController.swift
//  BookShelf
//
//  Created by Aries Lam on 3/17/22.
//

import UIKit
class BookCell: UITableViewCell{
    @IBOutlet weak var titleCellLabel: UILabel!
    @IBOutlet weak var authorCellLabel: UILabel!
    
}


class BookDetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var releaseDayLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews(){
        guard let book = book else{return}
        titleLabel.text = book.title
        authorNameLabel.text = book.author
        imageLabel.image = UIImage(named: book.image)
        releaseDayLabel.text = book.releaseDate
        descriptionLabel.text = book.description
    }
}

