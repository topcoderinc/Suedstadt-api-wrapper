//
//  StatementDate.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation
import SwiftyJSON

open class StatementDate {
    open var fileNumber: Int
    open var statementDate: Date
    open var filler: String
    
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
        let statementDate = json["responseStatementDte"].doubleValue.date
        let filler = json["responseFiller"].stringValue
        return StatementDate(fileNumber: fileNumber, statementDate: statementDate, filler: filler)
    }
}
