import Foundation

struct Day1Part1: Challenge {

    var inputFilePath = "./inputs/day1.txt"
    var day: Int = 1

    func perform(input: String) -> String {
        let lines = input.split(separator: "\n")
        let firstNumRegex = try! NSRegularExpression(pattern: #"^\D*(\d)"#, options: [])
        let lastNumRegex = try! NSRegularExpression(pattern: #"(\d)\D*$"#, options: [])

        let result = lines.reduce(into: 0) { total, line in
            guard let first = RegexUtils.getCapturingGroupValue(regex: firstNumRegex, in: String(line)),
                  let second = RegexUtils.getCapturingGroupValue(regex: lastNumRegex, in: String(line)),
                  let num = NumberUtil.intFrom("\(first)\(second)") else { return }

            // print("\(line.prefix(4))\t \(num)")

            total += num
        }
        return "\(result)"
    }

    func test() -> Bool {
        let input = """
1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet
"""

        let answer = self.perform(input: input)
        let expected = "142" 
        print("Expecting \(expected) == \(answer)")
        return answer == expected
    }

   




    
}