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
    
    func testLast() {
        XCTAssertEqual(5, List(1, 2, 3, 4, 5).last)
        XCTAssertEqual(1, List(1).last)
        XCTAssertEqual(5, List(1, 1, 1, 5, 1, 5).last)
    }
}
