//
//  StatementSummary.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation
import SwiftyJSON

open class StatementSummary {
    open let responseBMessageId: Int
    open let responseBVersionNo: Int
    open let responseBTermId: String
    open let responseBUsrId: String
    open let responseBDateTime: Date
    open let responseBCode: Int
    open let responseBMoreIndicator: String
    open let responseBRespType: String
    open let responseBSeqNo: Int
    open let responseBEntries: Int
    open let responseBStmtInfo: [Transaction]
    open let responseBBillCurrCode: Int
    open let responseBTtlSales: Double
    open let responseBTtlSalesSign: String
    open let responseBTtlRetn: Double
    open let responseBTtlRetnSign: String
    open let responseBTtlPmt: Double
    open let responseBTtlPmtSign: String
    open let responseBTtlPmtRev: Double
    open let responseBTtlPmtRevSign: String
    open let responseBTtlDebit: Double
    open let responseBTtlDebitSign: String
    open let responseBTtlCredit: Double
    open let responseBTtlCreditSign: String
    open let responseBTtlCashAdv: Double
    open let responseBTtlCashAdvSign: String
    open let responseBTtlOthChg: Double
    open let responseBTtlOthChgSign: String
    open let responseBTtlAdjCrd: Double
    open let responseBTtlAdjCrdSign: String
    open let responseBTtlLtPymChg: Double
    open let responseBTtlLtPymChgSign: String
    open let responseBPurOthChgs: Double
    open let responseBPurOthChgsSign: String
    open let responseBPymOthCrdt: Double
    open let responseBPymOthCrdtSign: String
    open let responseBRwdExtErrCode: Int
    
    /// Initializer
    init(responseBMessageId: Int, responseBVersionNo: Int, responseBTermId: String, responseBUsrId: String, responseBDateTime: Date, responseBCode: Int, responseBMoreIndicator: String, responseBRespType: String, responseBSeqNo: Int, responseBEntries: Int, responseBStmtInfo: [Transaction], responseBBillCurrCode: Int, responseBTtlSales: Double, responseBTtlSalesSign: String, responseBTtlRetn: Double, responseBTtlRetnSign: String, responseBTtlPmt: Double, responseBTtlPmtSign: String, responseBTtlPmtRev: Double, responseBTtlPmtRevSign: String, responseBTtlDebit: Double, responseBTtlDebitSign: String, responseBTtlCredit: Double, responseBTtlCreditSign: String, responseBTtlCashAdv: Double, responseBTtlCashAdvSign: String, responseBTtlOthChg: Double, responseBTtlOthChgSign: String, responseBTtlAdjCrd: Double, responseBTtlAdjCrdSign: String, responseBTtlLtPymChg: Double, responseBTtlLtPymChgSign: String, responseBPurOthChgs: Double, responseBPurOthChgsSign: String, responseBPymOthCrdt: Double, responseBPymOthCrdtSign: String, responseBRwdExtErrCode: Int) {
        self.responseBMessageId = responseBMessageId
        self.responseBVersionNo = responseBVersionNo
        self.responseBTermId = responseBTermId
        self.responseBUsrId = responseBUsrId
        self.responseBDateTime = responseBDateTime
        self.responseBCode = responseBCode
        self.responseBMoreIndicator = responseBMoreIndicator
        self.responseBRespType = responseBRespType
        self.responseBSeqNo = responseBSeqNo
        self.responseBEntries = responseBEntries
        self.responseBStmtInfo = responseBStmtInfo
        self.responseBBillCurrCode = responseBBillCurrCode
        self.responseBTtlSales = responseBTtlSales
        self.responseBTtlSalesSign = responseBTtlSalesSign
        self.responseBTtlRetn = responseBTtlRetn
        self.responseBTtlRetnSign = responseBTtlRetnSign
        self.responseBTtlPmt = responseBTtlPmt
        self.responseBTtlPmtSign = responseBTtlPmtSign
        self.responseBTtlPmtRev = responseBTtlPmtRev
        self.responseBTtlPmtRevSign = responseBTtlPmtRevSign
        self.responseBTtlDebit = responseBTtlDebit
        self.responseBTtlDebitSign = responseBTtlDebitSign
        self.responseBTtlCredit = responseBTtlCredit
        self.responseBTtlCreditSign = responseBTtlCreditSign
        self.responseBTtlCashAdv = responseBTtlCashAdv
        self.responseBTtlCashAdvSign = responseBTtlCashAdvSign
        self.responseBTtlOthChg = responseBTtlOthChg
        self.responseBTtlOthChgSign = responseBTtlOthChgSign
        self.responseBTtlAdjCrd = responseBTtlAdjCrd
        self.responseBTtlAdjCrdSign = responseBTtlAdjCrdSign
        self.responseBTtlLtPymChg = responseBTtlLtPymChg
        self.responseBTtlLtPymChgSign = responseBTtlLtPymChgSign
        self.responseBPurOthChgs = responseBPurOthChgs
        self.responseBPurOthChgsSign = responseBPurOthChgsSign
        self.responseBPymOthCrdt = responseBPymOthCrdt
        self.responseBPymOthCrdtSign = responseBPymOthCrdtSign
        self.responseBRwdExtErrCode = responseBRwdExtErrCode
    }
    
    /// convert json to object
    class func fromJson(_ json: JSON) -> StatementSummary {
        let responseBMessageId = json["responseBMessageId"].intValue
        let responseBVersionNo = json["responseBVersionNo"].intValue
        let responseBTermId = json["responseBTermId"].stringValue
        let responseBUsrId = json["responseBUsrId"].stringValue
        let responseBDateTime = json["responseBDateTime"].doubleValue.date
        let responseBCode = json["responseBCode"].intValue
        let responseBMoreIndicator = json["responseBMoreIndicator"].stringValue
        let responseBRespType = json["responseBRespType"].stringValue
        let responseBSeqNo = json["responseBSeqNo"].intValue
        let responseBEntries = json["responseBEntries"].intValue
        let responseBStmtInfo = json["responseBStmtInfo"].arrayValue.map({ Transaction.fromJson($0) })
        let responseBBillCurrCode = json["responseBBillCurrCode"].intValue
        let responseBTtlSales = json["responseBTtlSales"].doubleValue
        let responseBTtlSalesSign = json["responseBTtlSalesSign"].stringValue
        let responseBTtlRetn = json["responseBTtlRetn"].doubleValue
        let responseBTtlRetnSign = json["responseBTtlRetnSign"].stringValue
        let responseBTtlPmt = json["responseBTtlPmt"].doubleValue
        let responseBTtlPmtSign = json["responseBTtlPmtSign"].stringValue
        let responseBTtlPmtRev = json["responseBTtlPmtRev"].doubleValue
        let responseBTtlPmtRevSign = json["responseBTtlPmtRevSign"].stringValue
        let responseBTtlDebit = json["responseBTtlDebit"].doubleValue
        let responseBTtlDebitSign = json["responseBTtlDebitSign"].stringValue
        let responseBTtlCredit = json["responseBTtlCredit"].doubleValue
        let responseBTtlCreditSign = json["responseBTtlCreditSign"].stringValue
        let responseBTtlCashAdv = json["responseBTtlCashAdv"].doubleValue
        let responseBTtlCashAdvSign = json["responseBTtlCashAdvSign"].stringValue
        let responseBTtlOthChg = json["responseBTtlOthChg"].doubleValue
        let responseBTtlOthChgSign = json["responseBTtlOthChgSign"].stringValue
        let responseBTtlAdjCrd = json["responseBTtlAdjCrd"].doubleValue
        let responseBTtlAdjCrdSign = json["responseBTtlAdjCrdSign"].stringValue
        let responseBTtlLtPymChg = json["responseBTtlLtPymChg"].doubleValue
        let responseBTtlLtPymChgSign = json["responseBTtlLtPymChgSign"].stringValue
        let responseBPurOthChgs = json["responseBPurOthChgs"].doubleValue
        let responseBPurOthChgsSign = json["responseBPurOthChgsSign"].stringValue
        let responseBPymOthCrdt = json["responseBPymOthCrdt"].doubleValue
        let responseBPymOthCrdtSign = json["responseBPymOthCrdtSign"].stringValue
        let responseBRwdExtErrCode = json["responseBRwdExtErrCode"].intValue
        
        return StatementSummary(responseBMessageId: responseBMessageId, responseBVersionNo: responseBVersionNo, responseBTermId: responseBTermId, responseBUsrId: responseBUsrId, responseBDateTime: responseBDateTime, responseBCode: responseBCode, responseBMoreIndicator: responseBMoreIndicator, responseBRespType: responseBRespType, responseBSeqNo: responseBSeqNo, responseBEntries: responseBEntries, responseBStmtInfo: responseBStmtInfo, responseBBillCurrCode: responseBBillCurrCode, responseBTtlSales: responseBTtlSales, responseBTtlSalesSign: responseBTtlSalesSign, responseBTtlRetn: responseBTtlRetn, responseBTtlRetnSign: responseBTtlRetnSign, responseBTtlPmt: responseBTtlPmt, responseBTtlPmtSign: responseBTtlPmtSign, responseBTtlPmtRev: responseBTtlPmtRev, responseBTtlPmtRevSign: responseBTtlPmtRevSign, responseBTtlDebit: responseBTtlDebit, responseBTtlDebitSign: responseBTtlDebitSign, responseBTtlCredit: responseBTtlCredit, responseBTtlCreditSign: responseBTtlCreditSign, responseBTtlCashAdv: responseBTtlCashAdv, responseBTtlCashAdvSign: responseBTtlCashAdvSign, responseBTtlOthChg: responseBTtlOthChg, responseBTtlOthChgSign: responseBTtlOthChgSign, responseBTtlAdjCrd: responseBTtlAdjCrd, responseBTtlAdjCrdSign: responseBTtlAdjCrdSign, responseBTtlLtPymChg: responseBTtlLtPymChg, responseBTtlLtPymChgSign: responseBTtlLtPymChgSign, responseBPurOthChgs: responseBPurOthChgs, responseBPurOthChgsSign: responseBPurOthChgsSign, responseBPymOthCrdt: responseBPymOthCrdt, responseBPymOthCrdtSign: responseBPymOthCrdtSign, responseBRwdExtErrCode: responseBRwdExtErrCode)
    }
}
