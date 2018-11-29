//
//  P02.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/29/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems

class P02: XCTestCase {
    
    func testPenultimate() {
        let listOfOne = List(1)
        let listOfTwo = List(2, 4)
        let listOfFive = List(3, 3, 5, 7, 9)
        XCTAssertNil(listOfOne.penultimate)
        XCTAssertEqual(2, listOfTwo.penultimate)
        XCTAssertEqual(7, listOfFive.penultimate)
    }
}
