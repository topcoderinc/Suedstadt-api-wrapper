//
//  SuedstadtLibraryTests.swift
//  SuedstadtLibraryTests
//
//  Created by Sean Kim on 17/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import XCTest
@testable import SuedstadtLibrary

class SuedstadtLibraryTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetRelatedCards() {
        SuedstadtService.shared.getRelatedCards("2", success: { cards in
            XCTAssert(cards.count > 0)
        }) { (error) in
            XCTFail(error)
        }
    }
    
    func testGetStatementDates() {
        SuedstadtService.shared.getStatementDates("2", success: { statementDates in
            XCTAssert(statementDates.count > 0)
            statementDates.forEach({
                XCTAssert($0.statementDate.year > 1970, "Wrong date")
            })
        }) { (error) in
            XCTFail(error)
        }
    }
    
    func testGetStatementSummary() {
        SuedstadtService.shared.getStatementSummary("2", success: { summary in
            XCTAssert(summary.responseBStmtInfo.count > 0)
        }) { (error) in
            XCTFail(error)
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
