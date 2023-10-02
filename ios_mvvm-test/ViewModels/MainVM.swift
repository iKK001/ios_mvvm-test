//
//  MainView.swift
//  MVVM_Test_KOS
//
//  Created by Stephan Korner on 02.08.2023.
//

import Foundation

extension MainView {
    
    @MainActor class MainVM: ObservableObject {
        
        @Published private(set) var name: String = ""
        @Published private(set) var email: String = ""
        
        func fetchName() {
            let user = User.defaultUsers.randomElement()
            self.name = user?.name ?? ""
            self.email = user?.email ?? ""
        }
    }
}
