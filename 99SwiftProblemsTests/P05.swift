//
//  P05.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/29/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems
class P05: XCTestCase {
    
    func testReverse() {
        XCTAssertEqualList([8, 5, 3, 2, 1, 1], List(1, 1, 2, 3, 5, 8).reverse())
    }
}
