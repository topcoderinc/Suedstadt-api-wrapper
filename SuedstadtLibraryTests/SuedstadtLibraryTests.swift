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
        let bundle = Bundle(for: type(of: self))
        Configuration.shared.loadConfig(bundle)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetRelatedCards() {
        let expectation = XCTestExpectation()
        SuedstadtService.shared.getRelatedCards("2", success: { cards in
            XCTAssert(cards.count > 0)
            cards.forEach({
                XCTAssert($0.expiryDate.year > 2000, "Wrong date")
            })
            expectation.fulfill()
        }) { (error) in
            XCTFail(error)
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testGetStatementDates() {
        let expectation = XCTestExpectation()
        SuedstadtService.shared.getStatementDates("111120", success: { statementDates in
            XCTAssert(statementDates.count > 0)
            statementDates.forEach({
                XCTAssert($0.statementDate.year > 2000, "Wrong date")
            })
            expectation.fulfill()
        }) { (error) in
            XCTFail(error)
        }
        wait(for: [expectation], timeout: 5)
    }

    func testGetStatementSummary() {
        let expectation = XCTestExpectation()
        SuedstadtService.shared.getStatementSummary("111120", success: { summary in
            XCTAssert(summary.responseBDateTime.year > 2000, "Wrong date")
            XCTAssert(summary.responseBStmtInfo.count > 0)
            summary.responseBStmtInfo.forEach({
                XCTAssert($0.responseBTxnDte.year > 2000, "Wrong date")
            })
            expectation.fulfill()
        }) { (error) in
            XCTFail(error)
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
