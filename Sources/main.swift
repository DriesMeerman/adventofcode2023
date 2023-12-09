// The Swift Programming Language
// https://docs.swift.org/swift-book

print("\n\n----------------------------------------")
print("Advent of Code 2023")
print("----------------------------------------")


let day1 = Day1Part1()

// test successfully
print("Day 1 calibration document")
print(day1.test())

// load content from file day1.txt into a string
let day1Input = try! String(contentsOfFile: "./inputs/day1.txt", encoding: .utf8)
print("Day 1 result: \(day1.perform(input: day1Input))")
