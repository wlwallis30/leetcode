//
// Created by LW on 6/25/18.
// Copyright (c) 2018 wlwallis30. All rights reserved.
//

import Foundation

protocol AddTwoNumFunc {
}

extension AddTwoNumFunc {
    public func addTwoNums_2(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let res = ListNode(-1)
        var cur = res
        var carry = 0
        var l1: ListNode? = l1
        var l2: ListNode? = l2
        while l1 != nil || l2 != nil {
            let num1 = l1?.val ?? 0
            let num2 = l2?.val ?? 0
            let sum = num1 + num2 + carry
            carry = sum / 10
            cur.next = ListNode(sum % 10)
            cur = (cur.next ?? nil)!

            if l1 != nil { l1 = l1!.next }
            if l2 != nil { l2 = l2!.next }
        }
        if carry > 0 { cur.next = ListNode(carry) }
        return res.next
    }

    func multiplyTwoStrs_43 (_ num1: String, _ num2: String) -> String {
        let str1 = NSString(string: num1), str2 = NSString(string: num2)
        let zero = "0" as NSString
        let size1 = str1.length, size2 = str2.length
        let maxReulstSize = size1 + size2
        let startIdx = maxReulstSize - 2
        var tmpRes = Array(repeating: 0, count: maxReulstSize)

        for idx1 in 0..<size1 {
            for idx2 in 0..<size2 {
                let digit1 = str1.character(at: idx1) - zero.character(at: 0)
                let digit2 = str2.character(at: idx2) - zero.character(at: 0)
                tmpRes[startIdx - idx1 - idx2] += Int(digit1) * Int(digit2)
            }
        }

        var carry = 0
        for idx in 0..<maxReulstSize {
            tmpRes[idx] += carry
            carry = tmpRes[idx] / 10
            tmpRes[idx] = tmpRes[idx] % 10
        }

        var idx = startIdx + 1
        while tmpRes[idx] == 0 { idx -= 1 }
        if idx < 0 { return "0" }
        var res = ""
        while idx >= 0 {
            res += String(tmpRes[idx])
            idx -= 1
        }
        return res
    }

    func addBinary_67(_ str1: String, _ str2: String) -> String {
        var res = ""
        let str1 = NSString(string: str1), str2 = NSString(string: str2)
        let zero = "0" as NSString
        var carry = 0, pos1 = str1.length - 1, pos2 = str2.length - 1
        while pos1 >= 0 || pos2 >= 0 {
            let val1 = pos1 >= 0 ? str1.character(at: pos1) - zero.character(at: 0): 0
            let val2 = pos2 >= 0 ? str2.character(at: pos2) - zero.character(at: 0): 0
            pos1 -= 1
            pos2 -= 1
            let sum = Int(val1) + Int(val2) + carry
            res = String(sum % 2) + res
            carry = sum / 2
        }
        return carry == 1 ? "1" + res: res
    }
}

public final class AddTwoNums: AddTwoNumFunc {
}
