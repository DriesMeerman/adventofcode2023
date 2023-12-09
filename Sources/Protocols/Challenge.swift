
/// A protocol that defines the structure of a challenge.
/// So challenges can be executed in a generic way.
protocol Challenge {

    var inputFilePath: String { get }
    var name: String { get }

    init()

    func perform(input: String) -> String
    func test(silent: Bool) -> Bool
    
}