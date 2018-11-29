//
//  P06.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/29/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest
@testable import _9SwiftProblems

class P06: XCTestCase {
    
    func testPalindrome() {
        XCTAssertTrue(List(1).isPalindrome())
        XCTAssertTrue(List(1,1).isPalindrome())
        XCTAssertTrue(List(1, 2, 1).isPalindrome())
        XCTAssertTrue(List(2, 1, 2, 1, 2).isPalindrome())
        XCTAssertTrue(List(2, 1, 1, 2).isPalindrome())
        XCTAssertFalse(List(1, 2).isPalindrome())
        XCTAssertFalse(List(2, 2, 1, 2).isPalindrome())
        XCTAssertFalse(List(2, 2, 1, 3, 2).isPalindrome())
    }
}
