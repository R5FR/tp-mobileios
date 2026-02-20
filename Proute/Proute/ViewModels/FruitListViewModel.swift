import SwiftUI

/// ViewModel pour l'écran liste des fruits
final class FruitListViewModel: ObservableObject {
    @Published var fruits: [Fruit]

    init(fruits: [Fruit] = FruitData.all) {
        self.fruits = fruits
    }
}

/// ViewModel pour l'écran détail d'un fruit
final class FruitDetailViewModel: ObservableObject {
    let fruit: Fruit

    init(fruit: Fruit) {
        self.fruit = fruit
    }
}
