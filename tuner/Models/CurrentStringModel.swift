
enum Condition {
    case up
    case down
    case equals
    case no
}

struct CurrentString {
    var currentNote: String = ""
    var currentFrequency: Double = 0.00
    var needFrequency: Double = 0.00
    var Condition: Condition = .no
}
