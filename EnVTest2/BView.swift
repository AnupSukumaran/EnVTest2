//
//  BView.swift
//  EnVTest2
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI

struct BView: View {
   // @EnvironmentObject var nav: NavState

    @State var navigateToC: Bool = false
    var body: some View {
        VStack {
            Text("Screen B")
            Button("Go to C") {
                navigateToC = true
            }
            NavigationLink(
                destination: CView(),
                isActive: $navigateToC
            ) { EmptyView() }
        }
    }
}

#Preview {
    BView()
}
