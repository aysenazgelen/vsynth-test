import SwiftUI

struct PianoRollView: View {
    @State var notes: [Note] = [
        Note(pitch: 60, start: 4, duration: 4),
        Note(pitch: 62, start: 10, duration: 2),
        Note(pitch: 64, start: 12, duration: 3)
    ]

    let rows = 88
    let cellSize: CGFloat = 20.0

    var body: some View {
        HStack(spacing: 0) {
            // Static Piano Keys on the Left
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    ForEach((21...108).reversed(), id: \.self) { pitch in
                        PianoKeyView(pitch: pitch)
                    }
                }
            }
            .frame(width: 50) // Width of piano keys

            // Scrollable Grid on the Right
            ScrollView([.vertical, .horizontal]) {
                PianoRollGrid(notes: notes)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
