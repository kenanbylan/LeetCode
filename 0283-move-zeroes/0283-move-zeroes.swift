class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0
        
        for (index,number) in nums.enumerated().reversed() {
            if number == 0 {
                nums.remove(at:index)
                zeroCount += 1
            }
        }
        
        for _ in 0..<zeroCount {
            nums.append(0)
        }
    }
}

//reversed ile sonran başlayarak diziyi tararız ve arrayden bir eleman kaldırıldığında dizinin diğer elemanları
// güncellenmiş arraya kayarlar
