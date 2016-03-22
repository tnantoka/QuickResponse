//
//  QuickResponseTests.swift
//  QuickResponseTests
//
//  Created by Tatsuya Tobioka on 3/22/16.
//  Copyright © 2016 Tatsuya Tobioka. All rights reserved.
//

import XCTest
import QuickResponse

class QuickResponseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testCode() {
        let urlString = "http://example.com/"
        XCTAssertEqual(readCode(QuickResponse.code(urlString)), urlString)
        XCTAssertEqual(readCode(QuickResponse(message: urlString).scaled(2.0).leveled(.H).code), urlString)
    }
    
    private func readCode(image: UIImage) -> String {
        let detector = CIDetector(
            ofType: CIDetectorTypeQRCode,
            context: nil,
            options: [CIDetectorAccuracy: CIDetectorAccuracyHigh]
        )

        let features = detector.featuresInImage(image.CIImage!) as! [CIQRCodeFeature]
        let message = features.reduce("") { $0 + $1.messageString }
        return message
    }
}
