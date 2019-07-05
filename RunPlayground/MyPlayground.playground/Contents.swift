import Foundation

func uniqueDigitProducts(a: [Int]) -> Int {
    var set = Set<Int>()
    
    for item in a {
        
        let temp = item.digits
        var sum = 1
        for i in temp {
            sum *= i
        }
        
        set.insert(sum)
    }
    
    return set.count
}

extension Int {
    var digits: [Int] {
        return String(self).compactMap{ Int(String($0)) }
    }
}

let array = [2, 8, 121, 42, 222, 23]
let bound = 3
print(uniqueDigitProducts(a: array))

func isIncreasingDigitsSequence(n: Int) -> Bool {
    var ok = true
    let temp = n.digits
    for i in 0..<temp.count-1 {
        if temp[i] >= temp[i+1] {
            ok = false
            break
        }
    }
    return ok
}
print(isIncreasingDigitsSequence(n: 2446))

func concatenateNumbers(a: Int, b: Int) -> Int {
    let str = "\(a)\(b)"
    return Int(str) ?? 0
}

func replaceAllDigitsRegExp(input: String) -> String {
    var str = ""
    
    let temp = Array(input)
    for item in temp {
        if let _ = Int(String(item)) {
            str.append("#")
        } else {
            str.append(item)
        }
    }
    
    return str
}

print(replaceAllDigitsRegExp(input: "There are 12 points"))

print(concatenateNumbers(a: 24, b: 45))


func digitDistanceNumber(n: Int) -> Int {
    var temp = 0
    
    let array = n.digits
    for i in 0..<array.count-1 {
        let sub = abs(array[i] - array[i+1])
        temp = temp*10 + Int(sub)
    }
    
    return temp
}

print(digitDistanceNumber(n: 333))

func substitutionCipherDecryption(contents: String, signature: String, encryptedSignature: String) -> String {
    var str = ""
    
    return str
}

print(substitutionCipherDecryption(contents: "issomtoqmvjts", signature: "alice", encryptedSignature: "james"))




