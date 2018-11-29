//
//  P04.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/29/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems

class P04: XCTestCase {
    
    func testLength() {
        XCTAssertEqual(1, List(1).length)
        XCTAssertEqual(5, List(1, 2, 3, 4, 5).length)
    }
}
