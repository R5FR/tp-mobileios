import SwiftUI

struct FruitRowView: View {
    let fruit: Fruit

    var body: some View {
        HStack(spacing: 14) {
            ZStack {
                LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
                Image(fruit.imageName)
                    .resizable()
                    .scaledToFit()
                    .padding(8)
            }
            .frame(width: 80, height: 80)
            .clipShape(RoundedRectangle(cornerRadius: 10))

            VStack(alignment: .leading, spacing: 6) {
                Text(fruit.title)
                    .font(.title3)
                    .fontWeight(.bold)

                Text(fruit.headline)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
            }
        }
        .padding(.vertical, 6)
    }
}

#Preview {
    FruitRowView(fruit: FruitData.all[0])
}
