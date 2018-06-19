//
// Created by LW on 6/19/18.
// Copyright (c) 2018 wlwallis30. All rights reserved.
//

import Foundation
import XCTest
@testable import LeetcodeSwift

class TwoSumTests: XCTestCase {
    private let debug: Bool = true
    private let twoSum = TwoSum()
    private let resultStr = "result is: "
    private let expectedStr = "expected is: "
    private let expectedNotEqual = "not equal, expected is: "
    private let expectedIntStr = "not equal, expected integer is: %d"

    override func setUp() {
        super.setUp()
        print("Init before each test...\n")
    }

    override func tearDown() {
        print("Done after each test\n")
        super.tearDown()
    }

    private func printQuestionInfo(_ questionInfo: String) {
        if self.debug {
            print("-------Now Testing------>>", questionInfo, "\n")
        }
    }
    private func debugPrint(_ message: String) {
        if self.debug {
            print(message, "\n")
        }
    }

    private func debugPrint(_ number: Int) {
        if self.debug {
            print("Integer is: ", number, "\n")
        }
    }

    func testTwoSum_1() {
        let nums = [2, 7, 11, 15]
        let target = 9
        let res = twoSum.twoSum_1(nums: nums, target: target)
        let expected = [0, 1]
        printQuestionInfo("two sum @1")
        self.debugPrint(res.description)
        self.debugPrint(expected.description)
        XCTAssertEqual(res, expected)
    }

    func testThreeSum_15() {
        let nums = [-1, 0, 1, 2, -1, -4]
        let res = twoSum.threeSum_15(numbers: nums)
        let expected = [[-1, -1, 2], [-1, 0, 1]]
        self.printQuestionInfo("three sum @15")
        self.debugPrint(res.description)
        self.debugPrint(expected.description)
        XCTAssertEqual(res, expected)
    }

    func testThreeSumClosest_16() {
        var nums = [-1, 2, 1, -4]
        var target = 1
        var res = twoSum.threeSum_16(numbers: nums, target: target)
        var expected = 2

        self.printQuestionInfo("three sum closest @16")
        self.debugPrint(expected.description)
        self.debugPrint(res.description)
        XCTAssertEqual(res, expected)
        nums = [3,-2,-5,3,-4]
        target = -1
        expected = -2
        res = twoSum.threeSum_16(numbers: nums, target: target)
        self.debugPrint(expected)
        self.debugPrint(res)
    }

    func testFourSum_18() {
    var nums = [-1, 0, 1, 2, -2, 0]
    var target = 0
    var res = twoSum.fourSum_18(numbers: nums, target: target)
    var expected = [[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]]

    self.printQuestionInfo("four sum @18")
    self.debugPrint(expected.description)
    self.debugPrint(res.description)
    XCTAssertEqual(expected, res)

    nums =  [0, 0, 0, 0]
    target = 1
    res = twoSum.fourSum_18(numbers: nums, target: target)
    expected = []
    XCTAssertEqual(expected, res)

    nums = [-1,-5,-5,-3,2,5,0,4]
    target = -7
    expected = [[-5,-5,-1,4], [-5,-3,-1,2]]
    res = twoSum.fourSum_18(numbers: nums, target: target)
    XCTAssertEqual(expected, res)
    }

    func testTwoSum_167() {
    let nums = [2, 7, 11, 15]
    let target = 9
    let res = twoSum.twoSumSorted_167(nums: nums, target: target)
    let expected = [1, 2]

    self.printQuestionInfo("two sum @167")
    XCTAssertEqual(expected, res)
    }
}
