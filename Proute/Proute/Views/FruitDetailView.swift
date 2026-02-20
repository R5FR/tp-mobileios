import SwiftUI

struct FruitDetailView: View {
    @ObservedObject var viewModel: FruitDetailViewModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ZStack {
                    LinearGradient(colors: viewModel.fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)

                    Image(viewModel.fruit.image)
                        .resizable()
                        .scaledToFit()
                        .padding(28)
                        .frame(maxWidth: 380)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 320)

                VStack(alignment: .leading, spacing: 14) {
                    Text(viewModel.fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(viewModel.fruit.gradientColors.first ?? .orange)

                    Text(viewModel.fruit.headline)
                        .font(.headline)

                    // Section nutritionnelle dépliable
                    DisclosureGroup {
                        VStack(spacing: 0) {
                            NutritionRow(icon: "info.circle", label: "Energy", value: viewModel.fruit.nutrition[0], color: viewModel.fruit.gradientColors.first ?? .orange)
                            Divider()
                            NutritionRow(icon: "info.circle", label: "Sugar", value: viewModel.fruit.nutrition[1], color: viewModel.fruit.gradientColors.first ?? .orange)
                            Divider()
                            NutritionRow(icon: "info.circle", label: "Fat", value: viewModel.fruit.nutrition[2], color: viewModel.fruit.gradientColors.first ?? .orange)
                            Divider()
                            NutritionRow(icon: "info.circle", label: "Protein", value: viewModel.fruit.nutrition[3], color: viewModel.fruit.gradientColors.first ?? .orange)
                            Divider()
                            NutritionRow(icon: "info.circle", label: "Vitamins", value: viewModel.fruit.nutrition[4], color: viewModel.fruit.gradientColors.first ?? .orange)
                            Divider()
                            NutritionRow(icon: "info.circle", label: "Minerals", value: viewModel.fruit.nutrition[5], color: viewModel.fruit.gradientColors.first ?? .orange)
                        }
                    } label: {
                        Text("Nutritional value per 100g")
                            .font(.body)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                    // Section description complète
                    Text("LEARN MORE ABOUT \(viewModel.fruit.title.uppercased())")
                        .font(.headline)
                        .foregroundStyle(viewModel.fruit.gradientColors.first ?? .orange)

                    Text(viewModel.fruit.description)
                        .font(.body)
                        .foregroundStyle(.primary)
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationTitle(viewModel.fruit.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        FruitDetailView(viewModel: FruitDetailViewModel(fruit: FruitData.all[1]))
    }
}
