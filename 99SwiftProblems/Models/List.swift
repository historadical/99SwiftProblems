//
//  List.swift
//  99SwiftProblems
//
//  Created by Nic Laughter on 11/15/18.
//  Copyright © 2018 Gaire Tech, LLC. All rights reserved.
//

import Foundation

class List<T> {
    var value: T
    var nextItem: List<T>?
    
    // P04
    var length: Int {
        return 1 + (nextItem?.length ?? 0)
    }
    
    convenience init(_ value: T, _ values: T...) {
        self.init([value] + Array(values))!
    }
    
    init?(_ values: [T]) {
        guard let first = values.first else { return nil }
        value = first
        nextItem = List(Array(values.suffix(from: 1)))
    }
}

extension List {
    var last: T {
        return nextItem?.last ?? value
    }
    
    // P02
    var penultimate: T? {
        guard let nextItem = nextItem else { return nil }
        return nextItem.penultimate ?? value
    }
    
    // P03
    subscript(index: Int) -> T? {
        return index == 0 ? value : nextItem?[index-1]
    }
    
    // P05
    func reverse() -> List {
        var originalList = self
        var currentValue = List(value)
        while originalList.nextItem != nil,
            let nextItem = originalList.nextItem {
                originalList = nextItem
                let newList = List(originalList.value)
                newList.nextItem = currentValue
                currentValue = newList
        }
        return currentValue
    }
}

// P06
extension List where T: Equatable {
    
    func isPalindrome() -> Bool {
        guard self.length > 1 else { return true }
        var originalList = self
        var reversedList = self.reverse()
        var index = 0
        repeat {
            guard let originalNextItem = originalList.nextItem,
                let reversedNextItem = reversedList.nextItem,
                originalList.value == reversedList.value else { return false }
            originalList = originalNextItem
            reversedList = reversedNextItem
            index += 1
        } while index < self.length / 2
        return true
    }
}
