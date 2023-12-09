
class ChallengeRunner {
    
    let allChallenges: [Challenge.Type] = [
        Day1Part1.self
    ]

    var challenges: [Challenge] = []

    func setDayActive(day: Int) {
        guard day >= 1 && day <= 25 else {
            print("Day must be between 1 and 25")
            return
        }

        let index = day - 1

        self.challenges = [allChallenges[index].init()]
    }

    func activateLatest() {
        self.challenges = [allChallenges.last!.init()]
    }

    func activateAll() {
        self.challenges = allChallenges.map { $0.init() }
    }

    func test() {
        for challenge in challenges {
            print("Day \(challenge.day)")
            print("Test: \(challenge.test() ? "✅" : "❌")")
            print("----------------------------------------\n")
        }
    }

    func run() {
        for challenge in challenges {
            print("Day \(challenge.day)")
            let input = try! String(contentsOfFile: challenge.inputFilePath, encoding: .utf8)
            print("Result: \(challenge.perform(input: input))")
            print("----------------------------------------\n")
        }
    }
    
}