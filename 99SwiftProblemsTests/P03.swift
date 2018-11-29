//
//  P03.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/29/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems

class P03: XCTestCase {
    
    func testKthElement() {
        let list = List(1, 1, 2, 3, 5, 8)
        XCTAssertEqual(2, list[2])
    }
}
