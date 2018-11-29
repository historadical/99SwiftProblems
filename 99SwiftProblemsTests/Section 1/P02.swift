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
        XCTAssertEqual(4, List(1, 2, 3, 4, 5).penultimate)
        XCTAssertEqual(1, List(1, 2).penultimate)
        XCTAssertNil(List(1).penultimate)
    }
}
