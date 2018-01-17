//
//  Card.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation
import SwiftyJSON

open class Card {
    open let Org: Int
    open let Logo: Int
    open let responseAccountNumber: String
    open let responseCardNumber: String
    open let CardSequenceNumber: Int
    open let responseCustomerOrg: Int
    open let responseCustomerNumber: String
    open let responseRelationshipOrg: Int
    open let responseRelationshipNumber: String
    open let embosserName: String
    open let blockCode: String
    open let blockCode1: String
    open let blockCode2: String
    open let currentBalance: Double
    open let currentBalanceSign: String
    open let currencyCode: String
    open let cardCreditLimit: Double
    open let accountCreditLimit: Double
    open let expiryDate: Date
    open let cardToAddressIndicator: String
    open let billToAddressIndicator: String
    open let accountStatus: String
    open let delinquencyStatus: Int
    open let cardType: String
    open let accountOpenToBuy: Double
    open let accountOpenToBuySign: String
    open let staffIndicator: String
    open let blockCode1LastMaintainedDate: Date
    open let blockCode2LastMaintainedDate: Date
    open let blockCodeLastMaintainedDate: Date
    open let cardActivationIndicator: String
    open let memberSince: Int
    open let photoFlag: String
    open let familyPackIndicator: String
    open let cardStatus: String
    open let logoDescription: String
    open let acctOutstandingAuthAmt: Double
    open let acctOutstandingAuthAmtSign: String
    open let totalDisputedAmount: Double
    open let totalDisputedAmountSign: String
    open let annualIncome: Int
    open let annualIncomeSign: String
    open let cardCashLimit: Double
    open let cardCashLimitSign: String
    open let highestBlockCode: String
    open let highestReasonCode: String
    open let alopOutstandingAmount: Double
    open let alopOutstandingAmountSign: String
    open let statementFlag: String
    open let statementFlagMaintDate: Date
    open let lastPaymentDate: Date
    open let lastChequeBounceDate: Date
    open let behaviorScore: Int
    open let behaviorScoreSign: String
    open let cardArchivalFlag: String
    open let accountArchivalFlag: String
    open let relationshipArchivalFlag: String
    open let ipinStatus: String
    open let ipinGenerationDate: Date
    open let accountCashLimit: Double
    open let accountCashLimitSign: String
    open let combinedCreditLimitFlag: String
    open let creditLimitFlagCode: String
    open let cardLogo: Int
    open let cardOpenDate: Date
    open let endingBalOfLastStmt: Double
    open let endingBalOfLastStmtSign: String
    open let totalAmountDue: Double
    open let totalAmountDueSign: String
    open let paymentDueDate: Date
    open let nfcFlag: String
    open let nfcAssociatedCardNumber: String
    open let ppdKycIndicator: String
    open let logoCardType: String
    open let ppdSourceIndicator: String
    open let ppdUniqueId: Int
    open let priorCVC2: Int
    open let issueReason: String
    
    /// Initializer
    init(Org: Int, Logo: Int, responseAccountNumber: String, responseCardNumber: String, CardSequenceNumber: Int, responseCustomerOrg: Int, responseCustomerNumber: String, responseRelationshipOrg: Int, responseRelationshipNumber: String, embosserName: String, blockCode: String, blockCode1: String, blockCode2: String, currentBalance: Double, currentBalanceSign: String, currencyCode: String, cardCreditLimit: Double, accountCreditLimit: Double, expiryDate: Date, cardToAddressIndicator: String, billToAddressIndicator: String, accountStatus: String, delinquencyStatus: Int, cardType: String, accountOpenToBuy: Double, accountOpenToBuySign: String, staffIndicator: String, blockCode1LastMaintainedDate: Date, blockCode2LastMaintainedDate: Date, blockCodeLastMaintainedDate: Date, cardActivationIndicator: String, memberSince: Int, photoFlag: String, familyPackIndicator: String, cardStatus: String, logoDescription: String, acctOutstandingAuthAmt: Double, acctOutstandingAuthAmtSign: String, totalDisputedAmount: Double, totalDisputedAmountSign: String, annualIncome: Int, annualIncomeSign: String, cardCashLimit: Double, cardCashLimitSign: String, highestBlockCode: String, highestReasonCode: String, alopOutstandingAmount: Double, alopOutstandingAmountSign: String, statementFlag: String, statementFlagMaintDate: Date, lastPaymentDate: Date, lastChequeBounceDate: Date, behaviorScore: Int, behaviorScoreSign: String, cardArchivalFlag: String, accountArchivalFlag: String, relationshipArchivalFlag: String, ipinStatus: String, ipinGenerationDate: Date, accountCashLimit: Double, accountCashLimitSign: String, combinedCreditLimitFlag: String, creditLimitFlagCode: String, cardLogo: Int, cardOpenDate: Date, endingBalOfLastStmt: Double, endingBalOfLastStmtSign: String, totalAmountDue: Double, totalAmountDueSign: String, paymentDueDate: Date, nfcFlag: String, nfcAssociatedCardNumber: String, ppdKycIndicator: String, logoCardType: String, ppdSourceIndicator: String, ppdUniqueId: Int, priorCVC2: Int, issueReason: String) {
        
        self.Org = Org
        self.Logo = Logo
        self.responseAccountNumber = responseAccountNumber
        self.responseCardNumber = responseCardNumber
        self.CardSequenceNumber = CardSequenceNumber
        self.responseCustomerOrg = responseCustomerOrg
        self.responseCustomerNumber = responseCustomerNumber
        self.responseRelationshipOrg = responseRelationshipOrg
        self.responseRelationshipNumber = responseRelationshipNumber
        self.embosserName = embosserName
        self.blockCode = blockCode
        self.blockCode1 = blockCode1
        self.blockCode2 = blockCode2
        self.currentBalance = currentBalance
        self.currentBalanceSign = currentBalanceSign
        self.currencyCode = currencyCode
        self.cardCreditLimit = cardCreditLimit
        self.accountCreditLimit = accountCreditLimit
        self.expiryDate = expiryDate
        self.cardToAddressIndicator = cardToAddressIndicator
        self.billToAddressIndicator = billToAddressIndicator
        self.accountStatus = accountStatus
        self.delinquencyStatus = delinquencyStatus
        self.cardType = cardType
        self.accountOpenToBuy = accountOpenToBuy
        self.accountOpenToBuySign = accountOpenToBuySign
        self.staffIndicator = staffIndicator
        self.blockCode1LastMaintainedDate = blockCode1LastMaintainedDate
        self.blockCode2LastMaintainedDate = blockCode2LastMaintainedDate
        self.blockCodeLastMaintainedDate = blockCodeLastMaintainedDate
        self.cardActivationIndicator = cardActivationIndicator
        self.memberSince = memberSince
        self.photoFlag = photoFlag
        self.familyPackIndicator = familyPackIndicator
        self.cardStatus = cardStatus
        self.logoDescription = logoDescription
        self.acctOutstandingAuthAmt = acctOutstandingAuthAmt
        self.acctOutstandingAuthAmtSign = acctOutstandingAuthAmtSign
        self.totalDisputedAmount = totalDisputedAmount
        self.totalDisputedAmountSign = totalDisputedAmountSign
        self.annualIncome = annualIncome
        self.annualIncomeSign = annualIncomeSign
        self.cardCashLimit = cardCashLimit
        self.cardCashLimitSign = cardCashLimitSign
        self.highestBlockCode = highestBlockCode
        self.highestReasonCode = highestReasonCode
        self.alopOutstandingAmount = alopOutstandingAmount
        self.alopOutstandingAmountSign = alopOutstandingAmountSign
        self.statementFlag = statementFlag
        self.statementFlagMaintDate = statementFlagMaintDate
        self.lastPaymentDate = lastPaymentDate
        self.lastChequeBounceDate = lastChequeBounceDate
        self.behaviorScore = behaviorScore
        self.behaviorScoreSign = behaviorScoreSign
        self.cardArchivalFlag = cardArchivalFlag
        self.accountArchivalFlag = accountArchivalFlag
        self.relationshipArchivalFlag = relationshipArchivalFlag
        self.ipinStatus = ipinStatus
        self.ipinGenerationDate = ipinGenerationDate
        self.accountCashLimit = accountCashLimit
        self.accountCashLimitSign = accountCashLimitSign
        self.combinedCreditLimitFlag = combinedCreditLimitFlag
        self.creditLimitFlagCode = creditLimitFlagCode
        self.cardLogo = cardLogo
        self.cardOpenDate = cardOpenDate
        self.endingBalOfLastStmt = endingBalOfLastStmt
        self.endingBalOfLastStmtSign = endingBalOfLastStmtSign
        self.totalAmountDue = totalAmountDue
        self.totalAmountDueSign = totalAmountDueSign
        self.paymentDueDate = paymentDueDate
        self.nfcFlag = nfcFlag
        self.nfcAssociatedCardNumber = nfcAssociatedCardNumber
        self.ppdKycIndicator = ppdKycIndicator
        self.logoCardType = logoCardType
        self.ppdSourceIndicator = ppdSourceIndicator
        self.ppdUniqueId = ppdUniqueId
        self.priorCVC2 = priorCVC2
        self.issueReason = issueReason
    }
    
    /// convert json to object
    class func fromJson(_ json: JSON) -> Card {
        let Org = json["Org"].intValue
        let Logo = json["Logo"].intValue
        let responseAccountNumber = json["responseAccountNumber"].stringValue
        let responseCardNumber = json["responseCardNumber"].stringValue
        let CardSequenceNumber = json["CardSequenceNumber"].intValue
        let responseCustomerOrg = json["responseCustomerOrg"].intValue
        let responseCustomerNumber = json["responseCustomerNumber"].stringValue
        let responseRelationshipOrg = json["responseRelationshipOrg"].intValue
        let responseRelationshipNumber = json["responseRelationshipNumber"].stringValue
        let embosserName = json["embosserName"].stringValue
        let blockCode = json["blockCode"].stringValue
        let blockCode1 = json["blockCode1"].stringValue
        let blockCode2 = json["blockCode2"].stringValue
        let currentBalance = json["currentBalance"].doubleValue
        let currentBalanceSign = json["currentBalanceSign"].stringValue
        let currencyCode = json["currencyCode"].stringValue
        let cardCreditLimit = json["cardCreditLimit"].doubleValue
        let accountCreditLimit = json["accountCreditLimit"].doubleValue
        let expiryDate = json["expiryDate"].stringValue.isoDate
        let cardToAddressIndicator = json["cardToAddressIndicator"].stringValue
        let billToAddressIndicator = json["billToAddressIndicator"].stringValue
        let accountStatus = json["accountStatus"].stringValue
        let delinquencyStatus = json["delinquencyStatus"].intValue
        let cardType = json["cardType"].stringValue
        let accountOpenToBuy = json["accountOpenToBuy"].doubleValue
        let accountOpenToBuySign = json["accountOpenToBuySign"].stringValue
        let staffIndicator = json["staffIndicator"].stringValue
        let blockCode1LastMaintainedDate = json["blockCode1LastMaintainedDate"].stringValue.isoDate
        let blockCode2LastMaintainedDate = json["blockCode2LastMaintainedDate"].stringValue.isoDate
        let blockCodeLastMaintainedDate = json["blockCodeLastMaintainedDate"].stringValue.isoDate
        let cardActivationIndicator = json["cardActivationIndicator"].stringValue
        let memberSince = json["memberSince"].intValue
        let photoFlag = json["photoFlag"].stringValue
        let familyPackIndicator = json["familyPackIndicator"].stringValue
        let cardStatus = json["cardStatus"].stringValue
        let logoDescription = json["logoDescription"].stringValue
        let acctOutstandingAuthAmt = json["acctOutstandingAuthAmt"].doubleValue
        let acctOutstandingAuthAmtSign = json["acctOutstandingAuthAmtSign"].stringValue
        let totalDisputedAmount = json["totalDisputedAmount"].doubleValue
        let totalDisputedAmountSign = json["totalDisputedAmountSign"].stringValue
        let annualIncome = json["annualIncome"].intValue
        let annualIncomeSign = json["annualIncomeSign"].stringValue
        let cardCashLimit = json["cardCashLimit"].doubleValue
        let cardCashLimitSign = json["cardCashLimitSign"].stringValue
        let highestBlockCode = json["highestBlockCode"].stringValue
        let highestReasonCode = json["highestReasonCode"].stringValue
        let alopOutstandingAmount = json["alopOutstandingAmount"].doubleValue
        let alopOutstandingAmountSign = json["alopOutstandingAmountSign"].stringValue
        let statementFlag = json["statementFlag"].stringValue
        let statementFlagMaintDate = json["statementFlagMaintDate"].stringValue.isoDate
        let lastPaymentDate = json["lastPaymentDate"].stringValue.isoDate
        let lastChequeBounceDate = json["lastChequeBounceDate"].stringValue.isoDate
        let behaviorScore = json["behaviorScore"].intValue
        let behaviorScoreSign = json["behaviorScoreSign"].stringValue
        let cardArchivalFlag = json["cardArchivalFlag"].stringValue
        let accountArchivalFlag = json["accountArchivalFlag"].stringValue
        let relationshipArchivalFlag = json["relationshipArchivalFlag"].stringValue
        let ipinStatus = json["ipinStatus"].stringValue
        let ipinGenerationDate = json["ipinGenerationDate"].stringValue.isoDate
        let accountCashLimit = json["accountCashLimit"].doubleValue
        let accountCashLimitSign = json["accountCashLimitSign"].stringValue
        let combinedCreditLimitFlag = json["combinedCreditLimitFlag"].stringValue
        let creditLimitFlagCode = json["creditLimitFlagCode"].stringValue
        let cardLogo = json["cardLogo"].intValue
        let cardOpenDate = json["cardOpenDate"].stringValue.isoDate
        let endingBalOfLastStmt = json["endingBalOfLastStmt"].doubleValue
        let endingBalOfLastStmtSign = json["endingBalOfLastStmtSign"].stringValue
        let totalAmountDue = json["totalAmountDue"].doubleValue
        let totalAmountDueSign = json["totalAmountDueSign"].stringValue
        let paymentDueDate = json["paymentDueDate"].stringValue.isoDate
        let nfcFlag = json["nfcFlag"].stringValue
        let nfcAssociatedCardNumber = json["nfcAssociatedCardNumber"].stringValue
        let ppdKycIndicator = json["ppdKycIndicator"].stringValue
        let logoCardType = json["logoCardType"].stringValue
        let ppdSourceIndicator = json["ppdSourceIndicator"].stringValue
        let ppdUniqueId = json["ppdUniqueId"].intValue
        let priorCVC2 = json["priorCVC2"].intValue
        let issueReason = json["issueReason"].stringValue
        
        return Card(Org: Org, Logo: Logo, responseAccountNumber: responseAccountNumber, responseCardNumber: responseCardNumber, CardSequenceNumber: CardSequenceNumber, responseCustomerOrg: responseCustomerOrg, responseCustomerNumber: responseCustomerNumber, responseRelationshipOrg: responseRelationshipOrg, responseRelationshipNumber: responseRelationshipNumber, embosserName: embosserName, blockCode: blockCode, blockCode1: blockCode1, blockCode2: blockCode2, currentBalance: currentBalance, currentBalanceSign: currentBalanceSign, currencyCode: currencyCode, cardCreditLimit: cardCreditLimit, accountCreditLimit: accountCreditLimit, expiryDate: expiryDate, cardToAddressIndicator: cardToAddressIndicator, billToAddressIndicator: billToAddressIndicator, accountStatus: accountStatus, delinquencyStatus: delinquencyStatus, cardType: cardType, accountOpenToBuy: accountOpenToBuy, accountOpenToBuySign: accountOpenToBuySign, staffIndicator: staffIndicator, blockCode1LastMaintainedDate: blockCode1LastMaintainedDate, blockCode2LastMaintainedDate: blockCode2LastMaintainedDate, blockCodeLastMaintainedDate: blockCodeLastMaintainedDate, cardActivationIndicator: cardActivationIndicator, memberSince: memberSince, photoFlag: photoFlag, familyPackIndicator: familyPackIndicator, cardStatus: cardStatus, logoDescription: logoDescription, acctOutstandingAuthAmt: acctOutstandingAuthAmt, acctOutstandingAuthAmtSign: acctOutstandingAuthAmtSign, totalDisputedAmount: totalDisputedAmount, totalDisputedAmountSign: totalDisputedAmountSign, annualIncome: annualIncome, annualIncomeSign: annualIncomeSign, cardCashLimit: cardCashLimit, cardCashLimitSign: cardCashLimitSign, highestBlockCode: highestBlockCode, highestReasonCode: highestReasonCode, alopOutstandingAmount: alopOutstandingAmount, alopOutstandingAmountSign: alopOutstandingAmountSign, statementFlag: statementFlag, statementFlagMaintDate: statementFlagMaintDate, lastPaymentDate: lastPaymentDate, lastChequeBounceDate: lastChequeBounceDate, behaviorScore: behaviorScore, behaviorScoreSign: behaviorScoreSign, cardArchivalFlag: cardArchivalFlag, accountArchivalFlag: accountArchivalFlag, relationshipArchivalFlag: relationshipArchivalFlag, ipinStatus: ipinStatus, ipinGenerationDate: ipinGenerationDate, accountCashLimit: accountCashLimit, accountCashLimitSign: accountCashLimitSign, combinedCreditLimitFlag: combinedCreditLimitFlag, creditLimitFlagCode: creditLimitFlagCode, cardLogo: cardLogo, cardOpenDate: cardOpenDate, endingBalOfLastStmt: endingBalOfLastStmt, endingBalOfLastStmtSign: endingBalOfLastStmtSign, totalAmountDue: totalAmountDue, totalAmountDueSign: totalAmountDueSign, paymentDueDate: paymentDueDate, nfcFlag: nfcFlag, nfcAssociatedCardNumber: nfcAssociatedCardNumber, ppdKycIndicator: ppdKycIndicator, logoCardType: logoCardType, ppdSourceIndicator: ppdSourceIndicator, ppdUniqueId: ppdUniqueId, priorCVC2: priorCVC2, issueReason: issueReason)
    }
}
