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
        let reversed5 = List(1, 2, 3, 4, 5).reverse()
        XCTAssertEqualList([5,4,3,2,1], reversed5)
        
        let reversed1 = List(1).reverse()
        XCTAssertEqualList([1], reversed1)
        
        let reversed2 = List(1, 2).reverse()
        XCTAssertEqualList([2, 1], reversed2)
    }
}
