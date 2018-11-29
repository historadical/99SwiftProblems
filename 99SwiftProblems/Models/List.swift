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
    
    var penultimate: T? {
        guard let nextItem = nextItem else { return nil }
        return nextItem.penultimate ?? value
    }
    
    subscript(index: Int) -> T? {
        return index == 0 ? value : nextItem?[index-1]
    }
}
