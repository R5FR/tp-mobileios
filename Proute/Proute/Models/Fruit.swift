import SwiftUI

/// Modèle représentant un fruit avec ses informations détaillées
struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}

enum AppStorageKeys {
    static let isOnboarding = "isOnboarding"
}
