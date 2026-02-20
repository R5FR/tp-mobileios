import Foundation

final class OnboardingViewModel: ObservableObject {
    @Published var items: [Fruit]

    init(items: [Fruit] = Array(FruitData.all.prefix(6))) {
        self.items = items
    }
}
