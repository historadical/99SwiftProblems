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
    
    func testSubscript() {
        XCTAssertEqual(1, List(1, 2, 3, 4, 5, 6)[0])
        XCTAssertEqual(3, List(1, 2, 3, 4, 5, 6)[2])
        XCTAssertEqual(6, List(1, 2, 3, 4, 5, 6)[5])
        XCTAssertEqual(1, List(1)[0])
        XCTAssertNil(List(1)[1])
        XCTAssertNil(List(1)[-1])
        XCTAssertNil(List(1, 2, 3, 4)[4])
    }
}
