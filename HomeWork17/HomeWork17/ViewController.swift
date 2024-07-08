//
//  ViewController.swift
//  HomeWork17
//
//
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableViewAdapter: TableViewAdapter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewAdapter = TableViewAdapter()
        tableViewAdapter.sections = [
        FirstSectionAdapter(),
        SecondSectionAdapter(),
        ThirdSectionAdapter()
        ]
        
        tableViewAdapter.setup(with: tableView)
    }

}

