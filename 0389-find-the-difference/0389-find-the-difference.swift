class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        
        var sCount = s.count
        var charCount = [Character: Int]()
        
        for char in s {
            charCount[char,default:0 ] += 1
        }
        
        for addedChar in t {
            if let count = charCount[addedChar], count > 0 {
                charCount[addedChar] = count - 1
            } else {
                return addedChar 
            }
        }

        for(char, count) in charCount {
            if count == 1 {
                return char
            }
        }
        
        fatalError("Invalid inputs: s and t are not valid shuffled strings.")
    }
}


// Kenan Baylan