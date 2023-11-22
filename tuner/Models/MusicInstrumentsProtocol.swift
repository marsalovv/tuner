
typealias StringInstrument = (name: String, pitch: Double)

protocol MusicInstrumentsProtocol {
    var name: String {get}
    var strings: [StringInstrument] {get}
}

