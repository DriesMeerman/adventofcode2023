import Foundation

class RegexUtils {
    // Function to get the content of the capturing group
    static func getCapturingGroupValue(regex: NSRegularExpression, in string: String) -> String? {
        let range = NSRange(string.startIndex..<string.endIndex, in: string)
        if let match = regex.firstMatch(in: string, options: [], range: range) {
            if let range = Range(match.range(at: 1), in: string) {
                return String(string[range])
            }
        }
        return nil
    }
}

class NumberUtil {
    static  func intFrom(_ str: String?) -> Int? {
        guard let str = str else {
            return nil
        }

        return Int(str)
    }
}