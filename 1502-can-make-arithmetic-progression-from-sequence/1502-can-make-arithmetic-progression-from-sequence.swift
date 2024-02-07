class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        var differenceArr: [Int] = []
        
        var sortedArray = arr
        sortFunc(&sortedArray)
        
        for i in 0..<sortedArray.count - 1 {
            let difference = sortedArray[i + 1] - sortedArray[i]
            differenceArr.append(difference)
        }
    
        guard let firstElement = differenceArr.first else { return true }
        
        for element in differenceArr {
            if element != firstElement {
                return false
            }
        }
        
        return true
    }
    
    func sortFunc(_ array: inout [Int]) {
        let arrCount = array.count
        for i in 0..<arrCount {
            for j in 0..<arrCount - i - 1 {
                if array[j] > array[j+1] {
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                }
            }
        }
    }
}

/*
//Alternative code for Swap processing
let temp = array[j]
array[j] = array[j+1]
array[j+1] = temp
 */