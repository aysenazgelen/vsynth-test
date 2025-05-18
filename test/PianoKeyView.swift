import SwiftUI

struct PianoKeyView: View {
    var pitch: Int

    var isBlackKey: Bool {
        [1, 3, 6, 8, 10].contains(pitch % 12)
    }

    var body: some View {
        ZStack {
            Rectangle()
                .fill(isBlackKey ? Color.black : Color.white)
                .frame(width: 50, height: 20)
                .overlay(Rectangle().stroke(Color.gray))
            
            Text(noteName(for: pitch)) // or simpleNoteName(for: pitch)
                .font(.system(size: 10))
                .foregroundColor(isBlackKey ? .white : .black)
        }
    }

    func noteName(for pitch: Int) -> String {
        let noteNames = ["C", "C♯", "D", "D♯", "E", "F", "F♯", "G", "G♯", "A", "A♯", "B"]
        let octave = (pitch / 12) - 1
        let name = noteNames[pitch % 12]
        return "\(name)\(octave)"
    }
}
