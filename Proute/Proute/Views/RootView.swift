import SwiftUI

struct RootView: View {
    @AppStorage(AppStorageKeys.isOnboarding) private var isOnboarding = true

    var body: some View {
        if isOnboarding {
            ContentView()
        } else {
            FruitListView()
        }
    }
}

#Preview {
    RootView()
}
