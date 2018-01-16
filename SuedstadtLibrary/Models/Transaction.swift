//
//  Transaction.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation
import SwiftyJSON

class Transaction {
    let responseBOrigAcct: String
    let responseBOrigName: String
    let responseBTxnPostDte: Date
    let responseBTxnDte: Date
    let responseBTxnAmt: Double
    let responseBTxnAmtSign: String
    let responseBTxnCde: Int
    let responseBRefNbr: Int
    let responseBOrigRefNbr: String
    let responseBMerchName: String
    let responseBMerchCity: String
    let responseBMerchCnty: String
    let responseBMerchState: String
    let responseBMerchCat: Int
    let responseBOCurrAmt: Double
    let responseBOCurrSign: String
    let responseBOCurrCde: Int
    let responseBOCurrDec: Int
    let responseBTxnSetlInd: String
    let responseBTxnSrceCde: String
    let responseBTxnEntMode: String
    let responseBTxnPymtSvc: String
    let responseBTxnCurrDsc: String
    let responseBTxnPlanNbr: Int
    let responseBTxnPlanTyp: String
    let responseBTxnAuthCode: String
    let responseBTxnCardType: String
    let responseBTxnDrCrInd: String
    let responseBTxnPymtInd: String
    let responseBTxnOrigDesc: String
    let responseBTxnDisputFlg: String
    let responseBTxnStmtDate: Date
    let responseBTxnSeqNo: Int
    let responseBFileName: String
    let responseBFileNbr: Int
    let responseBChipTxnFlag: String
    let responseBTxnMerchOrg: Int
    let responseBTxnMerchStore: Int
    let responseBCitiChrgType: String
    let responseBTxnMcCd: String
    let responseBTxnMmcMstCd: String
    let responseBTxnConvRate: Double
    let responseBTxnConvRateSign: String
    let responseBTxnAmtInInr: Double
    let responseBTxnAmtInInrSign: String
    let responseBTxnSource: Int
    let responseBTxnChqNbr: String
    let responseBSaleperson: String
    let responseBTxnRwdPts: Double
    let responseBTxnRwdPtsSign: String
    let responseBEmiFlag: String
    let responseBEppRespCode: Int
    let responseBNfcFlag: String
    let responseBAssocCardNbr: String
    let responseBEppInd: String
    let responseBTxnTime: Int
    let responseBTxnBranchId: Int
    let responseBTxnOperator: String
    let responseBTxnCashierId: Int
    let responseBTxnWsp: String
    let responseBTxnDpDpan: String
    
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
        let responseBTxnPostDte = json["responseBTxnPostDte"].stringValue.isoDate
        let responseBTxnDte = json["responseBTxnDte"].stringValue.isoDate
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
        let responseBTxnStmtDate = json["responseBTxnStmtDate"].stringValue.isoDate
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
