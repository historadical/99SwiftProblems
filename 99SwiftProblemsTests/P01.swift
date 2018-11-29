//
//  P01.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/15/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems

class P01: XCTestCase {
    
    func testListInitializer() {
        let listOfOne = List(1)
        let listOfTwo = List(2, 4)
        let listOfFive = List(3, 3, 5, 7, 9)
        XCTAssertEqualList([1], listOfOne)
        XCTAssertEqualList([2, 4], listOfTwo)
        XCTAssertEqualList([3, 3, 5, 7, 9], listOfFive)
    }
    
    func testLast() {
        let listOfOne = List(1)
        let listOfTwo = List(2, 4)
        let listOfFive = List(3, 3, 5, 7, 9)
        XCTAssertEqual(1, listOfOne.last)
        XCTAssertEqual(4, listOfTwo.last)
        XCTAssertEqual(9, listOfFive.last)
    }
}
