
typealias StringInstrument = (name: String, frequency: Double)

protocol MusicInstrumentsProtocol {
    var name: String {get}
    var strings: [StringInstrument] {get}
}

