import Foundation

final class FruitListViewModel: ObservableObject {
    @Published var fruits: [Fruit]

    init(fruits: [Fruit] = FruitData.all.shuffled()) {
        self.fruits = fruits
    }
}

final class FruitDetailViewModel: ObservableObject {
    let fruit: Fruit

    init(fruit: Fruit) {
        self.fruit = fruit
    }
}
