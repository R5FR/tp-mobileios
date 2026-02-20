import SwiftUI

struct FruitDetailView: View {
    @ObservedObject var viewModel: FruitDetailViewModel

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ZStack {
                    LinearGradient(colors: viewModel.fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)

                    Image(viewModel.fruit.imageName)
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
