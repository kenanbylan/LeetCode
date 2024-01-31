class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var charCountS: [Character: Int] = [:]
        var charCountT: [Character: Int] = [:]
        
        for char in s {
            charCountS[char, default: 0] += 1
        }
        
        for char in t {
            charCountT[char, default: 0] += 1
        }
        
        return charCountS == charCountT
    }
}

