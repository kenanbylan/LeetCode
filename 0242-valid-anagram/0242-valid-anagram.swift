class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {

        //Character array with solve
        /*
        var charCountS: [Character: Int] = [:]
        var charCountT: [Character: Int] = [:]
        
        for char in s {
            charCountS[char, default: 0] += 1
        }
        
        for char in t {
            charCountT[char, default: 0] += 1
        }
        
        print("charCountS: ", charCountS)
        print("charCountT: ", charCountT)
        
        return charCountS == charCountT
        */
        
        
        //Easy solve
        let sortS = s.sorted()
        let sortT = t.sorted()
         
        return sortS == sortT    
    }
}


//NOT: Pseudocode

/*
First the number of times the character appearing in the string is calcucalated
and then their equaility is checked.

*/


//Kenan Baylan