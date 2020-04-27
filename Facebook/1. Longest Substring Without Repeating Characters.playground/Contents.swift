import UIKit

// Longest Substring Without Repeating Characters
// https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        let start = CFAbsoluteTimeGetCurrent()
        var characterDict = [Character:Int]()
        var maxLength = 0
        var lastRepeatPos = -1
        var i = 0

        for c in s {
            if (characterDict[c] != nil) && (characterDict[c]! > lastRepeatPos) {
                lastRepeatPos = characterDict[c]!
            }

            maxLength = max(i - lastRepeatPos, maxLength)
            characterDict[c] = i
            i += 1
        }

        let diff = CFAbsoluteTimeGetCurrent() - start
        print("Took \(diff) seconds")

        return maxLength

    }
}

let solution = Solution()

solution.lengthOfLongestSubstring("abcabcbb")
solution.lengthOfLongestSubstring("bbbbb")
solution.lengthOfLongestSubstring("pwwkew")
