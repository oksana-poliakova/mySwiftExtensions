//
//  UITableView+Extensions.swift
//  MySwiftExtensions
//
//  Created by Oksana Poliakova on 12.06.2022.
//

import UIKit

// MARK: - Register a tableViewCell in the tableView

extension UITableView {
    func register<T: UITableViewCell>(_ : T.Type) {
        register(T.self, forCellReuseIdentifier: String(describing: T.self))
    }

    func dequeue<T: UITableViewCell>(_: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as? T else { fatalError("Could not deque cell with type \(T.self)") }
        return cell
    }
}
