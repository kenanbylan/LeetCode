class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var newDigitsArray: [Int] = []
        var carry = 1
        
        for digit in digits.reversed() {
            let newValue = digit + carry
            carry = newValue / 10
            let digitAdd = newValue % 10
            
            newDigitsArray.insert(digitAdd, at:0)
        }
        
        if carry > 0 {
            newDigitsArray.insert(carry, at:0)
        }
        return newDigitsArray
    }
}