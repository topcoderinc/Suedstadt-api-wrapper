//
//  StatementDate.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation
import SwiftyJSON

class StatementDate {
    var fileNumber: Int
    var statementDate: Date
    var filler: String
    
    /// Initializer
    ///
    /// - Parameters:
    ///   - fileNumber: the fileNumber
    ///   - statementDate: the statementDate
    ///   - filler: the filler
    init(fileNumber: Int, statementDate: Date, filler: String) {
        self.fileNumber = fileNumber
        self.statementDate = statementDate
        self.filler = filler
    }
    
    /// Convert json to object
    ///
    /// - Parameter json: the json
    /// - Returns: the object
    class func fromJson(_ json: JSON) -> StatementDate {
        let fileNumber = json["responseFileNumber"].intValue
        let statementDate = DateFormatter.iso.date(from: json["responseStatementDte"].stringValue) ?? Date(timeIntervalSince1970: 0)
        let filler = json["responseFiller"].stringValue
        return StatementDate(fileNumber: fileNumber, statementDate: statementDate, filler: filler)
    }
}