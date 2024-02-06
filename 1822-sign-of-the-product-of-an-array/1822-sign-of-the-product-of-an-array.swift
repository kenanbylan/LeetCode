class Solution {
    func arraySign(_ nums: [Int]) -> Int {
        var multiplyResult:Int = 1
        
        for num in nums {
             if num == 0 {
                 return 0
             }
            if num < 0 {
                multiplyResult *= -1
            }
        }
        print("multiplyResult : ", multiplyResult)
        return multiplyResult
    
    }

}

    //not working my code
/*
    for num in nums {
        if num == 0 {
            return 0
        }
        multiplyResult *= num
    }
    
    if multiplyResult > 0 {
        return 1    
    } else if multiplyResult < 0 {
        return -1
    }

*/