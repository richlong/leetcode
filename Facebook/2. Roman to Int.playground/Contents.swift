import UIKit

// Roman to Integer
// https://leetcode.com/explore/interview/card/facebook/5/array-and-strings/3010/

class Solution {
    func romanToInt(_ s: String) -> Int {

        let start = CFAbsoluteTimeGetCurrent()

        let values = [
            "I" : 1,
            "V" : 5,
            "X" : 10,
            "L" : 50,
            "C" : 100,
            "D" : 500,
            "M" : 1000,
        ]

        let characters = Array(s)
        var runningTotal = 0
        var i = 0
        while i < characters.count {

            let currentChar = String(characters[i])
            let currentValue = values[currentChar]!

            guard i < characters.count - 1 else {
                runningTotal += currentValue
                i += 1
                break
            }

            let nextChar = String(characters[i+1])
            let nextValue = values[nextChar]!

            if (nextValue > currentValue) {
                runningTotal += nextValue - currentValue
                i += 2
            } else {
                runningTotal += currentValue
                i += 1
            }

        }

        let diff = CFAbsoluteTimeGetCurrent() - start
        print("Took \(diff) seconds")

        return runningTotal
    }

}

let solution = Solution()
solution.romanToInt("III")
solution.romanToInt("IV")
solution.romanToInt("IX")
solution.romanToInt("LVIII")
solution.romanToInt("MCMXCIV")
