//
//  UIView+Extensions.swift
//  MySwiftExtensions
//
//  Created by Oksana Poliakova on 12.06.2022.
//

import UIKit

// MARK: - Adding UIView + translatesAutoresizingMaskIntoConstraints
extension UIView {
    
    func addSubview(view: UIView, translatesAutoresizingMaskIntoConstraints: Bool) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
    }
}
