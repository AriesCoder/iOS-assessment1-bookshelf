//
//  BookListTableViewController.swift
//  BookShelf
//
//  Created by Aries Lam on 3/17/22.
//

import UIKit

//class BookCell: UITableViewCell{
//    @IBOutlet weak var titleCellLabel: UILabel!
//    @IBOutlet weak var authorCellLabel: UILabel!
//
//}

class BookListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookController.books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
            
            let book = BookController.books[indexPath.row]
            cell.textLabel?.text = book.title
            cell.detailTextLabel?.text = book.author
            cell.layer.cornerRadius = 15.0
        print("index", indexPath.row)
            if indexPath.row % 2 == 0 {
                cell.backgroundColor = .red
            }
            return cell
        }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBookDetail"{
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? BookDetailViewController
            else{return}

            let bookToSend = BookController.books[indexPath.row]
            destination.book = bookToSend
        }
    }
}

    
    


