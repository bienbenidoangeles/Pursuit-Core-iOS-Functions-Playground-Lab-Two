import UIKit

// Question One

// Write a function named average(of:) that returns the average of an array of Doubles

// Your function here

func average(of array: [Double]) -> Double {
    var sum:Double = 0
    let numOfElements = Double(array.count)
    for num in array {
        sum += num
    }
    let average = sum / numOfElements
    return average
}

let testCasesOne: [([Double], Double)] = [
    (input: [1,2,3,4,5], expectedOutput: 3),
    (input: [1,42,1,541,42,6], expectedOutput: 105.5),
    (input: [-10,5,-15,20], expectedOutput: 0),
    (input: [1.5, 2.25, 4.5, -1.5], expectedOutput: 1.6875),
]

for (input, expectedOutput) in testCasesOne {
    let output = average(of: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}

// Question Two

// Write a function named frequencyDictionary(of:) that takes a String as input and returns a dictionary that maps each character its number of occurrances

// Your function here

func frequencyDictionary(of string: String) -> [Character:Int]{
    var dictionary: [Character:Int] = [:]
    for char in string {
        dictionary[char] = (dictionary[char] ?? 0) + 1
    }
    
    return dictionary
}

let testCasesTwo: [(String, [Character: Int])] = [
    (input: "hello", expectedOutput: ["h": 1, "e": 1, "l": 2, "o": 1]),
    (input: "aaaaaAAA", expectedOutput: ["a": 5, "A":3]),
    (input: "More words", expectedOutput: ["M": 1, "o": 2, "r": 2, "e": 1, " ": 1, "w": 1, "d": 1, "s": 1])
]

for (input, expectedOutput) in testCasesTwo {
    let output = frequencyDictionary(of: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}


// Question Three

// Write a function called fizzBuzz(upto:) that returns an array containing the numbers from 1 to n as Strings with the following replacements:

// If the number if a multiple of 3, replace it with "Fizz"
// If the number is a multiple of 5, replace it with "Buzz"
// If the number is a multiple of 3 AND 5, replace it with "FizzBuzz"

// Your function here

func fizzBuzz(upto targetNumber: Int) -> [String]{
    var arrayOfNumbers = [String]()
    for num in 1...targetNumber {
        if (num%3 == 0) && (num%5 == 0) {
            arrayOfNumbers.append("FizzBuzz")
        } else if num%5 == 0 {
            arrayOfNumbers.append("Buzz")
        } else if num%3 == 0 {
            arrayOfNumbers.append("Fizz")
        } else {
            arrayOfNumbers.append(String(num))
        }
    }
    return arrayOfNumbers
}

let testCasesThree = [
    (input: 20, expectedOutput: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", "Buzz"]),
    (input: 40, expectedOutput: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz", "16", "17", "Fizz", "19", "Buzz", "Fizz", "22", "23", "Fizz", "Buzz", "26", "Fizz", "28", "29", "FizzBuzz", "31", "32", "Fizz", "34", "Buzz", "Fizz", "37", "38", "Fizz", "Buzz"]),
    
]

for (input, expectedOutput) in testCasesThree {
    let output = fizzBuzz(upto: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}


// Question Four

// Write a function named value(_:isGreaterThanAverageOf:) that takes in an array of Doubles and a Double and returns whether the Double is greater than the average

// Your function here
func value(_ givenNumber:Double , isGreaterThanAverageOf array:[Double]) -> Bool{
    var sum:Double = 0
    let numOfElements = Double(array.count)
    for num in array {
        sum += num
    }
    let averageOfArray = sum / numOfElements
    
    if givenNumber > averageOfArray{
        return true
    } else {
        return false
    }
}


let testCasesFour = [
    (inputOne: 4.0, inputTwo: [1.0,2,3,4,5], expectedOutput: true),
    (inputOne: 2, inputTwo: [1,2,3,4,5], expectedOutput: false),
    (inputOne: 3, inputTwo: [1,2,3,4,5], expectedOutput: false),
    (inputOne: 100.8, inputTwo: [1,42,1,541,42,5], expectedOutput: false),
    (inputOne: 105.4, inputTwo: [1,42,1,541,42,5], expectedOutput: true),
]

for (inputOne, inputTwo, expectedOutput) in testCasesFour {
    let output = value(inputOne, isGreaterThanAverageOf: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo), but got \(output)")
}

// Question Five

// Write a function that finds the second smallest Int an an array of Ints

// Your function here

func secondSmallestValue(in array:[Int]) -> Int {
    
    
    let newArray =  array.sorted()
    return newArray[1]
    
    //attempt with two transverses to find smallest value
    
//    var smallestValue = 0
//    var secondSmallestValue = 0
//    for num in array {
//        if num < smallestValue {
//            smallestValue = num
//        }
//
//    }
//    for _ in array{
//        if smallestValue < secondSmallestValue {
//            secondSmallestValue = smallestValue
//        }
//    }
//    return secondSmallestValue
}

let testCasesFive = [
    (input: [1,2,3,4], expectedOutput: 2),
    (input: [2,1,3,4], expectedOutput: 2),
    (input: [40,253,680,750,64,126,4,471,706,757,899,856,617,169,697,755,36,426,973,107,299,360,201,313,801,61,241,911,992,354,108,341,170,949,333,937,933,512,568,379,995,29,637,417,793,763,47,387,166,135,259,400,406,141,271,194,263,171,992,508,953,176,990,544,491,488,691,406,911,751,519,732,907,403,328,110,348,669,112,719,852,671,447,619,928,847,630,711,371,143,277,405,210,266,241,379,265,213,331,780], expectedOutput: 29),
    (input: [910,158,197,874,58,835,765,182,562,942,399,35,269,704,634,518,948,744,786,181,801,952,175,97,222,705,121,928,126,35,346,174,214,906,906,886,245,34,239,376,34,902,355,528,844,265,796,27,721,905,877,567,911,223,472,132,426,359,617,402,89,144,976,774,961,386,380,75,504,854,862,101,271,914,673,288,844,633,40,477,346,479,727,62,604,523,852,789,234,374,156,855,819,422,741,543,994,587,37,100], expectedOutput: 34),
    (input: [807,909,-22,424,244,873,-907,-350,-780,576,-177,278,-855,296,-33,-609,-664,-126,-469,-57,-376,-424,-477,-795,-481,-806,545,727,-879,210,-114,-783,-156,45,781,369,35,900,904,-2,168,489,-329,608,-287,40,442,362,-560,236,-583,698,544,-154,478,535,-397,363,470,-49,49,631,-62,-293,-419,-528,753,-809,-48,-888,606,-889,-908,672,-783,-921,-198,-428,701,-30,106,500,-106,199,-793,392,873,330,366,45,840,649,-135,-850,174,-338,901,-753,402,-62,554,-579,863,955,-999,-13,851,760,-523,-968,225,-173,-605,-759,306,657,844,168,-270,883,963,-835,624,570,705,333,-293,283,382,926,839,264,602,-940,160,-369,-770,-792,722,321,88,-176,-911,203,486,-175,-529,187,-668,518,-282,162,-165,-34,544,538,-828,-562,-154,591,345,-241,962,801,-632,-921,-710,588,-642,113,128,-242,56,716,-709,232,-870,241,-612,-583,-199,762,-601,-410,-896,-493,664,531,-613,-285,-951,-589,243,819,-195,911,-701,-368,-85,-316], expectedOutput: -968)
]

for (input, expectedOutput) in testCasesFive {
    let output = secondSmallestValue(in: input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}
