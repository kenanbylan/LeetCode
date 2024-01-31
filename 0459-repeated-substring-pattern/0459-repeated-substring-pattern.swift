class Solution {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let sCount = s.count
        // must be use prefix function
        
        if sCount == 1 || sCount == 0 {
            return false 
        }
        
        // The length of the string must be an even(cift) number
        for i in 1...(sCount / 2) {
            if sCount % i == 0 {
                let numberRepeat = sCount / i;
                let subStr = String(s.prefix(i))
                
                //if subStr == s && numberRepeat == sCount {
                //    return true
               // }
                
                if String(repeating: subStr, count: numberRepeat) == s {
                    return true
                }
            } 
        }
        return false
    }
}