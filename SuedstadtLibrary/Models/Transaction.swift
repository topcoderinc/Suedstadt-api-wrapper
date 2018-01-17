//
//  Transaction.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation
import SwiftyJSON

open class Transaction {
    open let responseBOrigAcct: String
    open let responseBOrigName: String
    open let responseBTxnPostDte: Date
    open let responseBTxnDte: Date
    open let responseBTxnAmt: Double
    open let responseBTxnAmtSign: String
    open let responseBTxnCde: Int
    open let responseBRefNbr: Int
    open let responseBOrigRefNbr: String
    open let responseBMerchName: String
    open let responseBMerchCity: String
    open let responseBMerchCnty: String
    open let responseBMerchState: String
    open let responseBMerchCat: Int
    open let responseBOCurrAmt: Double
    open let responseBOCurrSign: String
    open let responseBOCurrCde: Int
    open let responseBOCurrDec: Int
    open let responseBTxnSetlInd: String
    open let responseBTxnSrceCde: String
    open let responseBTxnEntMode: String
    open let responseBTxnPymtSvc: String
    open let responseBTxnCurrDsc: String
    open let responseBTxnPlanNbr: Int
    open let responseBTxnPlanTyp: String
    open let responseBTxnAuthCode: String
    open let responseBTxnCardType: String
    open let responseBTxnDrCrInd: String
    open let responseBTxnPymtInd: String
    open let responseBTxnOrigDesc: String
    open let responseBTxnDisputFlg: String
    open let responseBTxnStmtDate: Date
    open let responseBTxnSeqNo: Int
    open let responseBFileName: String
    open let responseBFileNbr: Int
    open let responseBChipTxnFlag: String
    open let responseBTxnMerchOrg: Int
    open let responseBTxnMerchStore: Int
    open let responseBCitiChrgType: String
    open let responseBTxnMcCd: String
    open let responseBTxnMmcMstCd: String
    open let responseBTxnConvRate: Double
    open let responseBTxnConvRateSign: String
    open let responseBTxnAmtInInr: Double
    open let responseBTxnAmtInInrSign: String
    open let responseBTxnSource: Int
    open let responseBTxnChqNbr: String
    open let responseBSaleperson: String
    open let responseBTxnRwdPts: Double
    open let responseBTxnRwdPtsSign: String
    open let responseBEmiFlag: String
    open let responseBEppRespCode: Int
    open let responseBNfcFlag: String
    open let responseBAssocCardNbr: String
    open let responseBEppInd: String
    open let responseBTxnTime: Int
    open let responseBTxnBranchId: Int
    open let responseBTxnOperator: String
    open let responseBTxnCashierId: Int
    open let responseBTxnWsp: String
    open let responseBTxnDpDpan: String
    
    /// Initializer
    init(responseBOrigAcct: String, responseBOrigName: String, responseBTxnPostDte: Date, responseBTxnDte: Date, responseBTxnAmt: Double, responseBTxnAmtSign: String, responseBTxnCde: Int, responseBRefNbr: Int, responseBOrigRefNbr: String, responseBMerchName: String, responseBMerchCity: String, responseBMerchCnty: String, responseBMerchState: String, responseBMerchCat: Int, responseBOCurrAmt: Double, responseBOCurrSign: String, responseBOCurrCde: Int, responseBOCurrDec: Int, responseBTxnSetlInd: String, responseBTxnSrceCde: String, responseBTxnEntMode: String, responseBTxnPymtSvc: String, responseBTxnCurrDsc: String, responseBTxnPlanNbr: Int, responseBTxnPlanTyp: String, responseBTxnAuthCode: String, responseBTxnCardType: String, responseBTxnDrCrInd: String, responseBTxnPymtInd: String, responseBTxnOrigDesc: String, responseBTxnDisputFlg: String, responseBTxnStmtDate: Date, responseBTxnSeqNo: Int, responseBFileName: String, responseBFileNbr: Int, responseBChipTxnFlag: String, responseBTxnMerchOrg: Int, responseBTxnMerchStore: Int, responseBCitiChrgType: String, responseBTxnMcCd: String, responseBTxnMmcMstCd: String, responseBTxnConvRate: Double, responseBTxnConvRateSign: String, responseBTxnAmtInInr: Double, responseBTxnAmtInInrSign: String, responseBTxnSource: Int, responseBTxnChqNbr: String, responseBSaleperson: String, responseBTxnRwdPts: Double, responseBTxnRwdPtsSign: String, responseBEmiFlag: String, responseBEppRespCode: Int, responseBNfcFlag: String, responseBAssocCardNbr: String, responseBEppInd: String, responseBTxnTime: Int, responseBTxnBranchId: Int, responseBTxnOperator: String, responseBTxnCashierId: Int, responseBTxnWsp: String, responseBTxnDpDpan: String) {
        self.responseBOrigAcct = responseBOrigAcct
        self.responseBOrigName = responseBOrigName
        self.responseBTxnPostDte = responseBTxnPostDte
        self.responseBTxnDte = responseBTxnDte
        self.responseBTxnAmt = responseBTxnAmt
        self.responseBTxnAmtSign = responseBTxnAmtSign
        self.responseBTxnCde = responseBTxnCde
        self.responseBRefNbr = responseBRefNbr
        self.responseBOrigRefNbr = responseBOrigRefNbr
        self.responseBMerchName = responseBMerchName
        self.responseBMerchCity = responseBMerchCity
        self.responseBMerchCnty = responseBMerchCnty
        self.responseBMerchState = responseBMerchState
        self.responseBMerchCat = responseBMerchCat
        self.responseBOCurrAmt = responseBOCurrAmt
        self.responseBOCurrSign = responseBOCurrSign
        self.responseBOCurrCde = responseBOCurrCde
        self.responseBOCurrDec = responseBOCurrDec
        self.responseBTxnSetlInd = responseBTxnSetlInd
        self.responseBTxnSrceCde = responseBTxnSrceCde
        self.responseBTxnEntMode = responseBTxnEntMode
        self.responseBTxnPymtSvc = responseBTxnPymtSvc
        self.responseBTxnCurrDsc = responseBTxnCurrDsc
        self.responseBTxnPlanNbr = responseBTxnPlanNbr
        self.responseBTxnPlanTyp = responseBTxnPlanTyp
        self.responseBTxnAuthCode = responseBTxnAuthCode
        self.responseBTxnCardType = responseBTxnCardType
        self.responseBTxnDrCrInd = responseBTxnDrCrInd
        self.responseBTxnPymtInd = responseBTxnPymtInd
        self.responseBTxnOrigDesc = responseBTxnOrigDesc
        self.responseBTxnDisputFlg = responseBTxnDisputFlg
        self.responseBTxnStmtDate = responseBTxnStmtDate
        self.responseBTxnSeqNo = responseBTxnSeqNo
        self.responseBFileName = responseBFileName
        self.responseBFileNbr = responseBFileNbr
        self.responseBChipTxnFlag = responseBChipTxnFlag
        self.responseBTxnMerchOrg = responseBTxnMerchOrg
        self.responseBTxnMerchStore = responseBTxnMerchStore
        self.responseBCitiChrgType = responseBCitiChrgType
        self.responseBTxnMcCd = responseBTxnMcCd
        self.responseBTxnMmcMstCd = responseBTxnMmcMstCd
        self.responseBTxnConvRate = responseBTxnConvRate
        self.responseBTxnConvRateSign = responseBTxnConvRateSign
        self.responseBTxnAmtInInr = responseBTxnAmtInInr
        self.responseBTxnAmtInInrSign = responseBTxnAmtInInrSign
        self.responseBTxnSource = responseBTxnSource
        self.responseBTxnChqNbr = responseBTxnChqNbr
        self.responseBSaleperson = responseBSaleperson
        self.responseBTxnRwdPts = responseBTxnRwdPts
        self.responseBTxnRwdPtsSign = responseBTxnRwdPtsSign
        self.responseBEmiFlag = responseBEmiFlag
        self.responseBEppRespCode = responseBEppRespCode
        self.responseBNfcFlag = responseBNfcFlag
        self.responseBAssocCardNbr = responseBAssocCardNbr
        self.responseBEppInd = responseBEppInd
        self.responseBTxnTime = responseBTxnTime
        self.responseBTxnBranchId = responseBTxnBranchId
        self.responseBTxnOperator = responseBTxnOperator
        self.responseBTxnCashierId = responseBTxnCashierId
        self.responseBTxnWsp = responseBTxnWsp
        self.responseBTxnDpDpan = responseBTxnDpDpan
    }
    
    /// convert json to object
    class func fromJson(_ json: JSON) -> Transaction {
        let responseBOrigAcct = json["responseBOrigAcct"].stringValue
        let responseBOrigName = json["responseBOrigName"].stringValue
        let responseBTxnPostDte = json["responseBTxnPostDte"].doubleValue.date
        let responseBTxnDte = json["responseBTxnDte"].doubleValue.date
        let responseBTxnAmt = json["responseBTxnAmt"].doubleValue
        let responseBTxnAmtSign = json["responseBTxnAmtSign"].stringValue
        let responseBTxnCde = json["responseBTxnCde"].intValue
        let responseBRefNbr = json["responseBRefNbr"].intValue
        let responseBOrigRefNbr = json["responseBOrigRefNbr"].stringValue
        let responseBMerchName = json["responseBMerchName"].stringValue
        let responseBMerchCity = json["responseBMerchCity"].stringValue
        let responseBMerchCnty = json["responseBMerchCnty"].stringValue
        let responseBMerchState = json["responseBMerchState"].stringValue
        let responseBMerchCat = json["responseBMerchCat"].intValue
        let responseBOCurrAmt = json["responseBOCurrAmt"].doubleValue
        let responseBOCurrSign = json["responseBOCurrSign"].stringValue
        let responseBOCurrCde = json["responseBOCurrCde"].intValue
        let responseBOCurrDec = json["responseBOCurrDec"].intValue
        let responseBTxnSetlInd = json["responseBTxnSetlInd"].stringValue
        let responseBTxnSrceCde = json["responseBTxnSrceCde"].stringValue
        let responseBTxnEntMode = json["responseBTxnEntMode"].stringValue
        let responseBTxnPymtSvc = json["responseBTxnPymtSvc"].stringValue
        let responseBTxnCurrDsc = json["responseBTxnCurrDsc"].stringValue
        let responseBTxnPlanNbr = json["responseBTxnPlanNbr"].intValue
        let responseBTxnPlanTyp = json["responseBTxnPlanTyp"].stringValue
        let responseBTxnAuthCode = json["responseBTxnAuthCode"].stringValue
        let responseBTxnCardType = json["responseBTxnCardType"].stringValue
        let responseBTxnDrCrInd = json["responseBTxnDrCrInd"].stringValue
        let responseBTxnPymtInd = json["responseBTxnPymtInd"].stringValue
        let responseBTxnOrigDesc = json["responseBTxnOrigDesc"].stringValue
        let responseBTxnDisputFlg = json["responseBTxnDisputFlg"].stringValue
        let responseBTxnStmtDate = json["responseBTxnStmtDate"].doubleValue.date
        let responseBTxnSeqNo = json["responseBTxnSeqNo"].intValue
        let responseBFileName = json["responseBFileName"].stringValue
        let responseBFileNbr = json["responseBFileNbr"].intValue
        let responseBChipTxnFlag = json["responseBChipTxnFlag"].stringValue
        let responseBTxnMerchOrg = json["responseBTxnMerchOrg"].intValue
        let responseBTxnMerchStore = json["responseBTxnMerchStore"].intValue
        let responseBCitiChrgType = json["responseBCitiChrgType"].stringValue
        let responseBTxnMcCd = json["responseBTxnMcCd"].stringValue
        let responseBTxnMmcMstCd = json["responseBTxnMmcMstCd"].stringValue
        let responseBTxnConvRate = json["responseBTxnConvRate"].doubleValue
        let responseBTxnConvRateSign = json["responseBTxnConvRateSign"].stringValue
        let responseBTxnAmtInInr = json["responseBTxnAmtInInr"].doubleValue
        let responseBTxnAmtInInrSign = json["responseBTxnAmtInInrSign"].stringValue
        let responseBTxnSource = json["responseBTxnSource"].intValue
        let responseBTxnChqNbr = json["responseBTxnChqNbr"].stringValue
        let responseBSaleperson = json["responseBSaleperson"].stringValue
        let responseBTxnRwdPts = json["responseBTxnRwdPts"].doubleValue
        let responseBTxnRwdPtsSign = json["responseBTxnRwdPtsSign"].stringValue
        let responseBEmiFlag = json["responseBEmiFlag"].stringValue
        let responseBEppRespCode = json["responseBEppRespCode"].intValue
        let responseBNfcFlag = json["responseBNfcFlag"].stringValue
        let responseBAssocCardNbr = json["responseBAssocCardNbr"].stringValue
        let responseBEppInd = json["responseBEppInd"].stringValue
        let responseBTxnTime = json["responseBTxnTime"].intValue
        let responseBTxnBranchId = json["responseBTxnBranchId"].intValue
        let responseBTxnOperator = json["responseBTxnOperator"].stringValue
        let responseBTxnCashierId = json["responseBTxnCashierId"].intValue
        let responseBTxnWsp = json["responseBTxnWsp"].stringValue
        let responseBTxnDpDpan = json["responseBTxnDpDpan"].stringValue
        
        return Transaction(responseBOrigAcct: responseBOrigAcct, responseBOrigName: responseBOrigName, responseBTxnPostDte: responseBTxnPostDte, responseBTxnDte: responseBTxnDte, responseBTxnAmt: responseBTxnAmt, responseBTxnAmtSign: responseBTxnAmtSign, responseBTxnCde: responseBTxnCde, responseBRefNbr: responseBRefNbr, responseBOrigRefNbr: responseBOrigRefNbr, responseBMerchName: responseBMerchName, responseBMerchCity: responseBMerchCity, responseBMerchCnty: responseBMerchCnty, responseBMerchState: responseBMerchState, responseBMerchCat: responseBMerchCat, responseBOCurrAmt: responseBOCurrAmt, responseBOCurrSign: responseBOCurrSign, responseBOCurrCde: responseBOCurrCde, responseBOCurrDec: responseBOCurrDec, responseBTxnSetlInd: responseBTxnSetlInd, responseBTxnSrceCde: responseBTxnSrceCde, responseBTxnEntMode: responseBTxnEntMode, responseBTxnPymtSvc: responseBTxnPymtSvc, responseBTxnCurrDsc: responseBTxnCurrDsc, responseBTxnPlanNbr: responseBTxnPlanNbr, responseBTxnPlanTyp: responseBTxnPlanTyp, responseBTxnAuthCode: responseBTxnAuthCode, responseBTxnCardType: responseBTxnCardType, responseBTxnDrCrInd: responseBTxnDrCrInd, responseBTxnPymtInd: responseBTxnPymtInd, responseBTxnOrigDesc: responseBTxnOrigDesc, responseBTxnDisputFlg: responseBTxnDisputFlg, responseBTxnStmtDate: responseBTxnStmtDate, responseBTxnSeqNo: responseBTxnSeqNo, responseBFileName: responseBFileName, responseBFileNbr: responseBFileNbr, responseBChipTxnFlag: responseBChipTxnFlag, responseBTxnMerchOrg: responseBTxnMerchOrg, responseBTxnMerchStore: responseBTxnMerchStore, responseBCitiChrgType: responseBCitiChrgType, responseBTxnMcCd: responseBTxnMcCd, responseBTxnMmcMstCd: responseBTxnMmcMstCd, responseBTxnConvRate: responseBTxnConvRate, responseBTxnConvRateSign: responseBTxnConvRateSign, responseBTxnAmtInInr: responseBTxnAmtInInr, responseBTxnAmtInInrSign: responseBTxnAmtInInrSign, responseBTxnSource: responseBTxnSource, responseBTxnChqNbr: responseBTxnChqNbr, responseBSaleperson: responseBSaleperson, responseBTxnRwdPts: responseBTxnRwdPts, responseBTxnRwdPtsSign: responseBTxnRwdPtsSign, responseBEmiFlag: responseBEmiFlag, responseBEppRespCode: responseBEppRespCode, responseBNfcFlag: responseBNfcFlag, responseBAssocCardNbr: responseBAssocCardNbr, responseBEppInd: responseBEppInd, responseBTxnTime: responseBTxnTime, responseBTxnBranchId: responseBTxnBranchId, responseBTxnOperator: responseBTxnOperator, responseBTxnCashierId: responseBTxnCashierId, responseBTxnWsp: responseBTxnWsp, responseBTxnDpDpan: responseBTxnDpDpan)
    }
}
