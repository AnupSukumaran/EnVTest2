//
//  RootView.swift
//  EnVTest2
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI


class NavState: ObservableObject {
    @Published var dismissToHome: Bool = false
    @Published var isAtB: Bool = false
    @Published var isAtC: Bool = false
}

struct RootView: View {
    @EnvironmentObject var nav: NavState
    
    var body: some View {
        NavigationView {
           AView()
        }
    }
}

#Preview {
    RootView()
}
