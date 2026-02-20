//
//  ContentView.swift
//  Proute
//
//  Created by COURS on 16/02/2026.
//

import SwiftUI

struct ContentView: View {
    @AppStorage(AppStorageKeys.isOnboarding) private var isOnboarding = true
    @StateObject private var viewModel = OnboardingViewModel()

    var body: some View {
        TabView {
            ForEach(viewModel.items) { fruit in
                VStack(spacing: 24) {
                    Spacer()

                    Image(fruit.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 260)

                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)

                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white.opacity(0.9))
                        .padding(.horizontal, 24)

                    Button {
                        isOnboarding = false
                    } label: {
                        HStack(spacing: 8) {
                            Text("Start")
                            Image(systemName: "arrow.right.circle")
                        }
                        .font(.title3.weight(.semibold))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 28)
                        .padding(.vertical, 10)
                        .overlay {
                            Capsule().stroke(.white, lineWidth: 1.5)
                        }
                    }

                    Spacer()
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    LinearGradient(
                        colors: fruit.gradientColors,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal, 20)
                .padding(.vertical, 30)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .background(Color(.systemGroupedBackground))
    }
}

#Preview {
    ContentView()
}
