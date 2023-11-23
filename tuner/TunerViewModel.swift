
import Tuna

protocol TunerProtocol {
    var instrument: MusicInstrumentsProtocol {get set}
    func start(stringId: Int)
    func getData(completion: (_: CurrentString) -> Void)
}

final class Tuner: TunerProtocol, PitchEngineDelegate {
    
    var instrument: MusicInstrumentsProtocol = Guitar()
    private var currentString = CurrentString()
    
    private lazy var pitchEngine: PitchEngine = {
        let pitch = PitchEngine(delegate: self)
        pitch.levelThreshold = -30.0
        
        return pitch
    }()
    
    func start(stringId: Int) {
        guard stringId < instrument.strings.count else {return}
        let string = instrument.strings[stringId - 1]
        currentString.needFrequency = string.frequency
        
        pitchEngine.start()
    }

    
    func getData(completion: (CurrentString) -> Void) {
        completion(currentString)
    }
    
    private func tuner(pitch: Pitch) {
        currentString.currentNote = pitch.note.description
        currentString.currentFrequency = pitch.frequency
        
        let delta = currentString.needFrequency / 240
        let range = (currentString.needFrequency - delta)...(currentString.needFrequency + delta)
        
        if range.contains(currentString.currentFrequency) {
            currentString.Condition = .equals
            return
        }
        if currentString.currentFrequency > currentString.needFrequency + delta {
            currentString.Condition = .down
            return
        }
        if currentString.currentFrequency < currentString.needFrequency - delta {
            currentString.Condition = .up
            return
        }
    }
    
    func pitchEngine(_ pitchEngine: Tuna.PitchEngine, didReceive result: Result<Tuna.Pitch, Error>) {
        switch result {
        case .success(let pitch):
            self.tuner(pitch: pitch)
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
    
}

