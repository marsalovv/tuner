
struct Guitar: MusicInstrumentsProtocol {
    let name = "Гитара"
    let strings: [StringInstrument] = [
        (name: "1 E", frequency: 329.63),
        (name: "2 B", frequency: 246.94),
        (name: "3 G", frequency: 196.00),
        (name: "4 D", frequency: 146.83),
        (name: "5 A", frequency: 110.00),
        (name: "6 E", frequency: 82.41)
    ]
}

