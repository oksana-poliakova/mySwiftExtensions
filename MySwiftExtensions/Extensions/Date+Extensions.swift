//
//  Date+Extensions.swift
//  MySwiftExtensions
//
//  Created by Oksana Poliakova on 12.06.2022.
//

import Foundation

// MARK: - Using Date instead of dateComponents
extension Formatter {
    
    static let birthday: DateFormatter = {
        let formatter = DateFormatter()
        formatter.calendar = .current
        formatter.locale = .init(identifier: "pt_BR") // or en_US or current if you want to localize your date description
        formatter.setLocalizedDateFormatFromTemplate("MMMMd")  // if you would like to include the year use yyyyMMMMd
        return formatter
    }()
}

extension Date {
    
    var age: Int {
        Calendar(identifier: .iso8601).dateComponents([.year], from: self, to: Date()).year ?? .zero
    }
    var birthday: String {
        Formatter.birthday.string(from: self)
    }
}
