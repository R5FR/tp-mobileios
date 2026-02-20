import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let description: String
    let imageName: String
    let gradientColorNames: [String]
}

extension Fruit {
    var gradientColors: [Color] {
        gradientColorNames.map { Color($0) }
    }
}

enum AppStorageKeys {
    static let isOnboarding = "isOnboarding"
}
