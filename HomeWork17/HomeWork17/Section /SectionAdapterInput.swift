//
//  SectionAdapterInput.swift
//  Lesson17
//
// 

import UIKit

protocol SectionAdapterInput {
    
    func registerCells(in tableView: UITableView)
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView)
    
    func titleForHeader() -> String?
}

// MARK: - Default
extension SectionAdapterInput {
    
    func titleForHeader() -> String? { nil }

    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return 0
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

class FirstSectionAdapter: NSObject, SectionAdapterInput {
    
    func titleForHeader() -> String? {
        return "Section 0"
    }
    
    var cellAdapters: [CellAdapterInput] = [
        FirstSectionCellAdapter(title: "Title 1"),
        FirstSectionCellAdapter(title: "Title 2")
    ]
    
    func registerCells(in tableView: UITableView) {
        cellAdapters.forEach { $0.registerCell(in: tableView) }
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return cellAdapters.count
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        return cellAdapters[indexPath.row].cellForRow(at: indexPath, in: tableView)
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return cellAdapters[indexPath.row].heightForRow(at: indexPath, in: tableView)
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        cellAdapters[indexPath.row].didSelectRow(at: indexPath, in: tableView)
    }
}

// Адаптер для другої секції
class SecondSectionAdapter: NSObject, SectionAdapterInput {
    
    func titleForHeader() -> String? {
        return "Section 1"
    }
    
    var cellAdapters: [CellAdapterInput] = [
        SecondSectionCellAdapter(title: "Secttings 1"),
        SecondSectionCellAdapter(title: "Secttings 2")
    ]
    
    func registerCells(in tableView: UITableView) {
        cellAdapters.forEach { $0.registerCell(in: tableView) }
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return cellAdapters.count
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        return cellAdapters[indexPath.row].cellForRow(at: indexPath, in: tableView)
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return cellAdapters[indexPath.row].heightForRow(at: indexPath, in: tableView)
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        cellAdapters[indexPath.row].didSelectRow(at: indexPath, in: tableView)
    }
}

// Адаптер для третьої секції
class ThirdSectionAdapter: NSObject, SectionAdapterInput {
    func titleForHeader() -> String? {
        return "Section 2"
    }
    
    var cellAdapters: [CellAdapterInput] = [
        ThirdSectionCellAdapter(title: "Title3.1"),
        ThirdSectionCellAdapter(title: "Title3.2")
    ]
    
    func registerCells(in tableView: UITableView) {
        cellAdapters.forEach { $0.registerCell(in: tableView) }
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return cellAdapters.count
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        return cellAdapters[indexPath.row].cellForRow(at: indexPath, in: tableView)
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return cellAdapters[indexPath.row].heightForRow(at: indexPath, in: tableView)
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        cellAdapters[indexPath.row].didSelectRow(at: indexPath, in: tableView)
    }
}

