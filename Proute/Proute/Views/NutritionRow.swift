import SwiftUI

/// Ligne d'information nutritionnelle réutilisable
struct NutritionRow: View {
    let icon: String
    let label: String
    let value: String
    let color: Color

    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundStyle(color)
                .font(.title3)

            Text(label)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundStyle(color)

            Spacer()

            Text(value)
                .font(.body)
                .multilineTextAlignment(.trailing)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    NutritionRow(icon: "info.circle", label: "Energy", value: "138 kJ (33 kcal)", color: .orange)
        .padding()
}
