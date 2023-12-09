
class ChallengeRunner {
    
    let allChallenges: [Challenge.Type] = [
        Day1Part1.self, Day2Part2.self
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

    /// Run the test input for each active challenge
    /// - Parameter silent: the logs of the day's test will be hidden if true
    func test(silent: Bool = true) {
        print("Testing...\n")
        for challenge in challenges {
            let completionChar = challenge.test(silent: silent) ? "✅" : "❌"
            
            print(challenge.name + "\t\(completionChar)")
            if !silent { print("") } // add a line break if not silent to give space between tests
        }
        print("----------------------------------------\n")
    }

    func run() {
        print("Running...\n")
        for challenge in challenges {
            //print("Day \(challenge.day)")
            let input = try! String(contentsOfFile: challenge.inputFilePath, encoding: .utf8)
            print("\(challenge.name): \(challenge.perform(input: input))")
            print("\n----------------------------------------\n")
        }
    }
    
}