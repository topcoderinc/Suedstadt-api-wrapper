//
//  SuedstadtService.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class SuedstadtService {
    
    static let shared = SuedstadtService()
    
    var baseUrl = "http://localhost:3030/api/v1"
    
    private init() {
    }
    
    func getRelatedCards(_ customerNumber: String, success: @escaping ([Card])->(), failure: @escaping (String)->()) {
        let url = baseUrl + "/card/cardinfo/relatedCardListInq"
        
        let parameters: Parameters = [
            "GBOF0003Operation": [
                "getRelationshipAcctReq": [
                    "requestMessageId": 1234,
                    "requestVersionNumber": 12,
                    "requestTerminalId": "a",
                    "requestUserId": "a",
                    "requestDateTime": Date().timeIntervalSince1970.int,
                    "requestChannelInd": "a",
                    "requestCustomerOrg": 0,
                    "requestCustomerNumber": customerNumber,
                    "requestRelationshipNumber": "a",
                    "requestCardNumber": "a",
                    "requestNextKey": [
                        "bsNextOrg": 0,
                        "bsNextAccount": "a",
                        "edNextOrg": 0,
                        "edNextCard": "a",
                        "edNextSequence": 0,
                    ],
                    "archivalFlag": "n",
                    "unblockedCardsFlag": "a",
                    "primaryCardIndicator": "a",
                    "relatedCardsInquiryFlag": "a",
                ]
            ]
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                guard let array = json["GBOF0003OperationResponse"]["getRelationshipAcctRes"]["accountInfoTable"].array, array.count > 0 else {
                    failure("No card available")
                    return
                }
                success(array.map({ Card.fromJson($0) }))
            case .failure(let error):
                failure(error.localizedDescription)
                return
            }
        }
    }
    
    func getStatementDates(_ cardNumber: String, success: @escaping ([StatementDate])->(), failure: @escaping (String)->()) {
        let url = baseUrl + "/card/cardinfo/statementDatesListInq"
        
        let headers: HTTPHeaders = [:]
        
        let parameters: Parameters = [
            "GBOF0011Operation": [
                "statementDatesListInqReq": [
                    "requestMessageId": 1,
                    "requestVersionNumber": 1,
                    "requestTerminalId": "a",
                    "requestUserId": "a",
                    "requestDateTime": Date().timeIntervalSince1970.int,
                    "requestChannelInd": "",
                    "requestOrg": 0,
                    "requestLogo": 0,
                    "requestAcctNumber": cardNumber,
                    "requestArchiveFlag": "n"
                ]
            ]
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                guard let array = json["GBOF0011OperationResponse"]["responseInformation"].array, array.count > 0 else {
                    failure("No statement dates available")
                    return
                }
                success(array.map({ StatementDate.fromJson($0) }))
            case .failure(let error):
                failure(error.localizedDescription)
            }
        }
    }
    
    func getStatementSummary(_ fileNumber: String, success: @escaping (StatementSummary)->(), failure: @escaping (String)->()) {
        let url = baseUrl + "/card/cardinfo/statementedTxnInq"
        
        let headers: HTTPHeaders = [:]
        
        let parameters: Parameters = [
            "GBOF0012Operation": [
                "prevStatmentInfoReq": [
                    "requestMessageId": 1,
                    "requestVersionNumber": 1,
                    "requestTerminalId": "a",
                    "requestUserId": "2",
                    "requestDateTime": Date().timeIntervalSince1970.int,
                    "requestChannelInd": "a",
                    "requestOrgnisation": 1,
                    "requestLogo": 1,
                    "requestAcct": "a",
                    "requestStmtNbr": 1,
                    "requestFileNbr": fileNumber,
                    "requestStmtDte": Date().timeIntervalSince1970.int,
                    "requestInfoType": "a",
                    "requestNxtKeyVal": 1,
                    "requestAcctCardFlag": "a",
                    "requestSourceInd": "a",
                    "requestEppPromoId": "a",
                    "requestRevoTxnInqFlag": "a",
                    "requestPlanNumber": 1
                ]
            ]
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                success(StatementSummary.fromJson(json["GBOF0012OperationResponse"]["statementSummaryInqRes"]))
            case .failure(let error):
                failure(error.localizedDescription)
            }
        }
    }
}
