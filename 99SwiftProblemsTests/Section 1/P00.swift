//
//  P00.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/29/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems

class P00: XCTestCase {
    
    func testConvienceInit() {
        let list = List(1, 2, 3)
        
        XCTAssertEqual(1, list.value)
        XCTAssertEqual(2, list.nextItem?.value)
        XCTAssertEqual(3, list.nextItem?.nextItem?.value)
    }
    
    func testInit() {
        let list = List([1, 2, 3])
        
        XCTAssertEqual(1, list?.value)
        XCTAssertEqual(2, list?.nextItem?.value)
        XCTAssertEqual(3, list?.nextItem?.nextItem?.value)
    }
    
    func testInit_empty() {
        XCTAssertNil(List([]))
    }
}
