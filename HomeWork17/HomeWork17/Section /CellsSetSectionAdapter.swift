//
//  CellsSetSectionAdapter.swift
//  Lesson17
//
// 
//

import UIKit

class CellsSetSectionAdapter {

    var cellAdapters: [CellAdapterInput] = []
}

// MARK: - SectionAdapterInput
extension CellsSetSectionAdapter: SectionAdapterInput {
    

    func registerCells(in tableView: UITableView) {
        cellAdapters.forEach { $0.registerCell(in: tableView) }
    }

    func numberOfRows(in section: Int) -> Int {
        return cellAdapters.count
    }

    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        return cellAdapters[indexPath.row].cellForRow(at: indexPath, in: tableView)
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return cellAdapters[indexPath.row].heightForRow(at: indexPath, in: tableView)
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        return cellAdapters[indexPath.row].didSelectRow(at: indexPath, in: tableView)
    }
}

// класи адаптерів для кожної секції
 
class Section1Adapter: CellsSetSectionAdapter {
    override init() {
        super.init()
//        додаємо адаптер
        cellAdapters = [
            FirstSectionCellAdapter(title: "Title 1"),
            FirstSectionCellAdapter(title: "Title 2")
        ]
    }
}

class Section2Adapter: CellsSetSectionAdapter {
    override init() {
        super.init()
        cellAdapters = [
            SecondSectionCellAdapter(title: "Secttings 1"),
            SecondSectionCellAdapter(title: "Secttings 2")
        ]
    }
}

class Section3Adapter: CellsSetSectionAdapter {
    override init() {
        super.init()
        cellAdapters = [
            ThirdSectionCellAdapter(title: "Title3.1"),
            ThirdSectionCellAdapter(title: "Title3.2")
        ]
    }
}

