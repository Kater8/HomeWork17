//
//  CellAdapterInput.swift
//  Lesson17
//
//  
//

import UIKit

protocol CellAdapterInput {
    var cellNibName: String { get }
    var cellReuseIdentifier: String { get }
    
    func registerCell(in tableView: UITableView)
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView)
}

// MARK: - Default
extension CellAdapterInput {
    func registerCell(in tableView: UITableView) {
        tableView.register(.init(nibName: cellNibName, bundle: .main), forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 44.0
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        // do nothing
    }
}

// Адаптер для комірок першої секції
class FirstSectionCellAdapter: NSObject, CellAdapterInput {
    // MARK: Properties
    let title: String
    
    init(title: String) {
        self.title = title
    }
    // MARK: CellAdapterInput
    var cellNibName: String { return "FirstSectionCell" }
    
    var cellReuseIdentifier: String { return "FirstSectionCellIdentifier" }
      
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.backgroundColor = .red.withAlphaComponent(0.5)
        (cell as? FirstSectionCell)?.setup(with: title)
        return cell
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 60.0
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        
    }
    
}

//другої секції

class SecondSectionCellAdapter: NSObject, CellAdapterInput {
    
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var cellNibName: String {return "SecondSectionCell" }
    
    var cellReuseIdentifier: String {return "SecondSectionCellIdentifier"}
    
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.backgroundColor = .green.withAlphaComponent(0.5)
        (cell as? SecondSectionCell)?.setup(with: title)
        return cell
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 44.0
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        
    }
}

// третьої секції

class ThirdSectionCellAdapter: NSObject, CellAdapterInput {
    
    let title: String
    
    init(title: String) {
        self.title = title
    }
    
    var cellNibName: String {return "ThirdSectionCell"}
    
    var cellReuseIdentifier: String {return "ThirdSectionCellIdentifier"}
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath)
        cell.backgroundColor = .blue.withAlphaComponent(0.5)
        (cell as? ThirdSectionCell)?.setup(with: title)
        return cell
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 80.0
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        
    }
    
}
