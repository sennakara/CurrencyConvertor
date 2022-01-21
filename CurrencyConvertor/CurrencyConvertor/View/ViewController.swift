//
//  ViewController.swift
//  CurrencyConvertor
//
//  Created by user209479 on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tableView: UITableView!
    
    
    let dataSource = CurrencyDataSource()
        
        lazy var viewModel : CurrencyViewModel = {
            let viewModel = CurrencyViewModel(dataSource: dataSource)
            return viewModel
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
           
            self.title = "£ Exchange rate"
            
            self.tableView.dataSource = self.dataSource
            self.dataSource.data.addAndNotify(observer: self) { [weak self] _ in
                self?.tableView.reloadData()
            }
            
            // add error handling example
            self.viewModel.onErrorHandling = { [weak self] error in
                // display error ?
                let controller = UIAlertController(title: "An error occured", message: "Oops, something went wrong!", preferredStyle: .alert)
                controller.addAction(UIAlertAction(title: "Close", style: .cancel, handler: nil))
                self?.present(controller, animated: true, completion: nil)
            }
            
            self.viewModel.fetchCurrencies()
        }
}
