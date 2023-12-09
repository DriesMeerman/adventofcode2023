import Foundation

struct Day1Part1: Challange {

    func perform(input: String) -> String {
        let lines = input.split(separator: "\n")
        let firstNumRegex = try! NSRegularExpression(pattern: #"^\D*(\d)"#, options: [])
        let lastNumRegex = try! NSRegularExpression(pattern: #"(\d)\D*$"#, options: [])

        let result = lines.reduce(into: 0) { total, line in
            guard let first = getCapturingGroupValue(regex: firstNumRegex, in: String(line)),
                  let second = getCapturingGroupValue(regex: lastNumRegex, in: String(line)),
                  let num = intFrom("\(first)\(second)") else { return }

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

    func intFrom(_ str: String?) -> Int? {
        guard let str = str else {
            return nil
        }

        return Int(str)
    }

    // Function to get the content of the capturing group
    func getCapturingGroupValue(regex: NSRegularExpression, in string: String) -> String? {
        let range = NSRange(string.startIndex..<string.endIndex, in: string)
        if let match = regex.firstMatch(in: string, options: [], range: range) {
            if let range = Range(match.range(at: 1), in: string) {
                return String(string[range])
            }
        }
        return nil
    }


    
}