//
//  Extensions.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation

extension Double {
    var int: Int {
       return Int(self)
    }
    
    var date: Date {
        return Date(timeIntervalSince1970: self / 1000)
    }
}

extension DateFormatter {
    /// "2018-01-16T08:59:47.927Z"
    static var iso: ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions.insert(.withFractionalSeconds)  // this is only available effective iOS 11 and macOS 10.13
        return formatter
    }
}

extension Date {
    var year: Int {
        return Calendar.current.component(.year, from: self)
    }
}

extension String {
    /// "2018-01-16T08:59:47.927Z"
    var isoDate: Date {
        return DateFormatter.iso.date(from: self) ?? Date(timeIntervalSince1970: 0)
    }
}
