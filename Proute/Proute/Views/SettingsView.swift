import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    @AppStorage(AppStorageKeys.isOnboarding) private var isOnboarding = true

    var body: some View {
        NavigationStack {
            Form {
                Section("Fructus") {
                    HStack(spacing: 12) {
                        Image(systemName: "apple.logo")
                            .font(.system(size: 32))
                            .foregroundStyle(.green)
                            .frame(width: 64, height: 64)
                            .background(Color.green.opacity(0.12))
                            .clipShape(RoundedRectangle(cornerRadius: 12))

                        Text("Most fruits are naturally low in fat, sodium, and calories. Fruits are great sources of nutrients and hydration.")
                            .font(.subheadline)
                    }
                    .padding(.vertical, 4)
                }

                Section("Customization") {
                    Text("If enabled, the onboarding slider will be shown again when you return to the app.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)

                    Toggle("Restart", isOn: $isOnboarding)
                }

                Section("Application") {
                    HStack {
                        Text("Developer")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("John / Jane")
                    }

                    HStack {
                        Text("Designer")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("Robert Petras")
                    }

                    HStack {
                        Text("Compatibility")
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text("iOS 17+")
                    }
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}
