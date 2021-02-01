//
//  File.swift
//  test
//
//  Created by Исмаил Ибрагим on 1/27/21.
//

import Foundation

struct Question {
    var question: String
    var answer: String
    var options = [String]()
}

class Result {
    var percent: Double
    var count: Int
    var max: Int
    init(percent: Double, count: Int, max: Int) {
        self.percent = percent
        self.count = count
        self.max = max
    }
}

class SharedArray {
    static var array = [Result]()
}
