//
//  MainView.swift
//  MVVM_Test_KOS
//
//  Created by Stephan Korner on 02.08.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var vm = MainVM()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Spacer().frame(height: 30)
            VStack {
                Text(vm.name)
                Text(vm.email)
                Spacer().frame(height: 20)
                Button {
                    vm.fetchName()
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .padding()
        .onAppear() {
            Task {
                do {
                    // Simulate more complex tasks
                    try await Task.sleep(nanoseconds: 1_000_000_000)
                    vm.fetchName()
                } catch {
                    print("Failed to load data")
                }
            }
            
        }
    }
}

#Preview {
    MainView()
}
