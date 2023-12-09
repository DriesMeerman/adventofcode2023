// The Swift Programming Language
// https://docs.swift.org/swift-book

print("\n\n----------------------------------------")
print("Advent of Code 2023")
print("----------------------------------------\n")


let runner = ChallengeRunner()

// runner.setDayActive(day: 1) // set any specific day active
// runner.activateAll() // activate all challenges
runner.activateLatest()

runner.test(silent: false) // run example input for each challenge to quickly validate the solution
runner.run() // run the actual input for each active challenge
