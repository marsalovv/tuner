
enum Condition {
    case up, down, equals, no
}

struct CurrentString {
    var currentNote: String = ""
    var currentFrequency: Double = 0.00
    var needFrequency: Double = 0.00
    var Condition: Condition = .no
}
