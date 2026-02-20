import SwiftUI

struct FruitListView: View {
    @StateObject private var viewModel = FruitListViewModel()
    @State private var isSettingsPresented = false

    var body: some View {
        NavigationStack {
            List(viewModel.fruits) { fruit in
                NavigationLink {
                    FruitDetailView(viewModel: FruitDetailViewModel(fruit: fruit))
                } label: {
                    FruitRowView(fruit: fruit)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isSettingsPresented = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .accessibilityLabel("Settings")
                }
            }
            .sheet(isPresented: $isSettingsPresented) {
                SettingsView()
            }
        }
    }
}

#Preview {
    FruitListView()
}
