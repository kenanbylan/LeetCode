class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] == nums[j] {
                    return true
                }
            }
        }
        return false
    }
}