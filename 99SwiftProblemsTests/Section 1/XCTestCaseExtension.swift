//
//  XCTestCaseExtension.swift
//  99SwiftProblemsTests
//
//  Created by Nic Laughter on 11/15/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import XCTest

@testable import _9SwiftProblems

extension XCTestCase {
    func XCTAssertEqualList<T: Equatable>(_ array: [T], _ list: List<T>?, file: String = #file, line: Int = #line){
        guard var list = list else {
            self.recordFailure(withDescription:
                "List was nil", inFile: file, atLine: line, expected: true)
            return
        }
        //        guard list.count == array.count else {
        //            self.recordFailure(withDescription:
        //                "Expected length of \(array.count) but found \(list.count)", inFile: file, atLine: line, expected: true)
        //            return
        //        }
        
        var index = 0
        while index < array.count {
            guard list.value == array[index] else {
                self.recordFailure(withDescription:
                    "Expected \(array[index]) at \(index), but found \(list.value)", inFile: file, atLine: line, expected: true)
                return
            }
            
            if let nextItem = list.nextItem {
                list = nextItem
            } else if index + 1 < array.count {
                self.recordFailure(withDescription:
                    "List ended early", inFile: file, atLine: line, expected: true)
                return
            }
            index += 1
        }
    }
}
