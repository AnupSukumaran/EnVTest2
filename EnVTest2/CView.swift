//
//  CView.swift
//  EnVTest2
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI

struct CView: View {
    @EnvironmentObject var nav: NavState

    var body: some View {
        VStack {
            Text("Screen C")
            Button("Back to A") {
                nav.dismissToHome = true
            }
        }
        .onChange(of: nav.dismissToHome) { goHome in
            if goHome {
                // unwind C → B → A
                nav.isAtC = false
                nav.isAtB = false
                nav.dismissToHome = false  // reset flag
            }
        }
    }
}

#Preview {
    CView()
}
