
struct Guitar: MusicInstrumentsProtocol {
    let name = "Гитара"
    let strings: [StringInstrument] = [
        (name: "1 E", pitch: 329.63),
        (name: "2 B", pitch: 246.94),
        (name: "3 G", pitch: 196.00),
        (name: "4 D", pitch: 146.83),
        (name: "5 A", pitch: 110.00),
        (name: "6 E", pitch: 82.41)
    ]
}

