//
//  BookListTableViewController.swift
//  BookShelf
//
//  Created by Aries Lam on 3/17/22.
//

import UIKit


class BookListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookController.books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookCell
            
            let book = BookController.books[indexPath.row]
            cell.titleCellLabel.text = book.title
            cell.authorCellLabel.text = book.author
           
            return cell
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

    
    


