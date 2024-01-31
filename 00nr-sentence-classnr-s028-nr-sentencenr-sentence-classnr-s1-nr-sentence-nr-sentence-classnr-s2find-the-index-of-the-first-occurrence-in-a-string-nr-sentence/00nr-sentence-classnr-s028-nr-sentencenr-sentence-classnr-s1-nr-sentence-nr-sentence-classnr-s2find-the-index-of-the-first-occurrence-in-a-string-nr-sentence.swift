class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        //example: haystack = kenan --- needle "an"
        // i == 0  "k"
        // i == 3  "a"
        
        let hayStackCount: Int = haystack.count 
        let needleCount: Int = needle.count 

        if haystack.isEmpty || hayStackCount < needleCount {
            return -1       // MARK: needle not found.
        }
        
        for i in 0...(hayStackCount - needleCount) {
            let firstIndex = haystack.index(haystack.startIndex, offsetBy: i)
            let lastIndex = haystack.index(firstIndex, offsetBy: needleCount)
            let newString = haystack[firstIndex..<lastIndex]
            
            if newString == needle {
                return i //index found.
            }
        }
        return -1
    }
}