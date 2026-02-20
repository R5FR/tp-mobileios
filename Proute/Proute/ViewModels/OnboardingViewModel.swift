import SwiftUI
import Combine

/// ViewModel pour l'écran d'onboarding (slider)
final class OnboardingViewModel: ObservableObject {
    @Published var items: [Fruit]

    init(items: [Fruit] = Array(FruitData.all.prefix(6))) {
        self.items = items
    }
}
