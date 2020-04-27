import UIKit

// 3 Sum
// https://leetcode.com/explore/interview/card/facebook/5/array-and-strings/283/

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        let start = CFAbsoluteTimeGetCurrent()
        var res = [[Int]]()

        for i in 0..<nums.count {

            let currentVal = nums[i]

            for j in (i+1)..<nums.count {

                let nextVal = nums[j]
                let searchVal = currentVal + nextVal

                if currentVal + nextVal == 0 {
                    res.append([currentVal, nextVal])
                }

            }


        }

        let diff = CFAbsoluteTimeGetCurrent() - start
        print("Took \(diff) seconds")
        return res

    }}

let solution = Solution()

solution.threeSum([-1, 0, 1, 2, -1, -4])
solution.threeSum([3, 5, 2, -4, 8, 11])
