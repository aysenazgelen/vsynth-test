import Foundation

struct Note: Identifiable {
    let id = UUID()
    var pitch: Int
    var start: Int
    var duration: Int
}
