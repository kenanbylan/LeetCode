class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
            var merged = ""
            var i = 0
            var j = 0

            while i < word1.count && j < word2.count {
                merged.append(word1[word1.index(word1.startIndex, offsetBy: i)])
                i += 1
                merged.append(word2[word2.index(word2.startIndex, offsetBy: j)])
                j += 1
            }

            while i < word1.count {
                merged.append(word1[word1.index(word1.startIndex, offsetBy: i)])
                i += 1
            }

            while j < word2.count {
                merged.append(word2[word2.index(word2.startIndex, offsetBy: j)])
                j += 1
            }

            return merged

            }
}

