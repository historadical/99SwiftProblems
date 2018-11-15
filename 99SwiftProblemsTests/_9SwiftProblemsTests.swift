//
//  _9SwiftProblemsTests.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/15/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems

class _9SwiftProblemsTests: XCTestCase {
    
    func testListInitializer() {
        let list = List(1, 1, 3, 4, 7, 9)
        XCTAssertEqualList([1, 1, 3, 4, 7, 9], list)
    }
    
    func testLast() {
        let list = List(1, 1, 3, 4, 7, 9)
        XCTAssertEqual(9, list.last)
    }
    
    func testPenultimate() {
        let list = List(1, 1, 3, 4, 7, 9)
        XCTAssertEqual(7, list.penultimate)
    }
}
