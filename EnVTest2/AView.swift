//
//  AView.swift
//  EnVTest2
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI

struct AView: View {
    @EnvironmentObject var nav: NavState
    @State var navigateToB: Bool = false

    var body: some View {
        VStack {
            Text("Screen A")
            Button("Go to B") {
                nav.fromRootToViews = true
            }
            NavigationLink(
                destination: BView(),
                isActive: $nav.fromRootToViews
            ) { EmptyView() }
        }
    }
}

#Preview {
    AView()
}
