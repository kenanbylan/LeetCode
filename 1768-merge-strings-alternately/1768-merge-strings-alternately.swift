class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        
        
        var mergedString: String = ""
        var i = 0 
        var j = 0
        
        
        // It is first added to mergeString one by one sequentially.
        
        while i < word1.count && j < word2.count {
            let index1 = word1.index(word1.startIndex,offsetBy:i)
            mergedString.append(word1[index1])
            i += 1
            
            let index2 = word2.index(word2.startIndex,offsetBy:j)
            mergedString.append(word2[index2])
            j += 1    
        }

        
        // then if word1 or word2 is not equal, it is added to the end of the mergeString
        
        while i < word1.count {
            let index1 = word1.index(word1.startIndex,offsetBy:i)
            mergedString.append(word1[index1])
            i += 1   
        }
        
        while j < word2.count {
            let index2 = word2.index(word2.startIndex,offsetBy:j)
            mergedString.append(word2[index2])
            j += 1   
        }
        
        return mergedString
    }
}

// Kenan Baylan 
