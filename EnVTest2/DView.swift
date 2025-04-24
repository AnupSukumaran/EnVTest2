//
//  DView.swift
//  EnVTest2
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI


struct DView: View {
    @EnvironmentObject var nav: NavState

    var body: some View {
        VStack {
            Text("Screen D")
            Button("Back to A") {
                //nav.dismissToHome = true
                nav.fromRootToViews = false
            }
        }
//        .onChange(of: nav.dismissToHome) { goHome in
//            if goHome {
//                // unwind C → B → A
//              //  nav.isAtC = false
//                nav.isAtB = false
//                nav.dismissToHome = false  // reset flag
//            }
//        }
    }
}

#Preview {
    DView()
}
