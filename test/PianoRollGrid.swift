import SwiftUI

struct PianoRollGrid: View {
    let notes: [Note]
    let rows = 88
    let columns = 64
    let cellSize: CGFloat = 20.0

    var body: some View {
        ZStack(alignment: .topLeading) {
            // Horizontal lines (pitch)
            ForEach(0..<rows, id: \.self) { row in
                Rectangle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 0.5)
                    .frame(width: CGFloat(columns) * cellSize, height: cellSize)
                    .offset(y: CGFloat(row) * cellSize)
            }

            // Vertical lines (time)
            ForEach(0..<columns, id: \.self) { column in
                Rectangle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 0.5)
                    .frame(width: cellSize, height: CGFloat(rows) * cellSize)
                    .offset(x: CGFloat(column) * cellSize)
            }

            // Notes
            ForEach(notes) { note in
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
                    Text(midiPitchToNoteName(note.pitch)) // or use midiPitchToSimpleNote()
                        .font(.caption2)
                        .foregroundColor(.white)
                }
                .frame(width: CGFloat(note.duration) * cellSize,
                       height: cellSize)
                .offset(x: CGFloat(note.start) * cellSize,
                        y: CGFloat(108 - note.pitch) * cellSize)
            }
        }
        .frame(width: CGFloat(columns) * cellSize,
               height: CGFloat(rows) * cellSize)
    }
    
    func midiPitchToNoteName(_ pitch: Int) -> String {
        let noteNames = ["C", "C♯", "D", "D♯", "E", "F", "F♯", "G", "G♯", "A", "A♯", "B"]
        let octave = (pitch / 12) - 1
        let name = noteNames[pitch % 12]
        return "\(name)\(octave)"
    }
}
