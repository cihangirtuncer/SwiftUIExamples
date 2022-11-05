//
//  introView.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 27.10.2022.
//

import SwiftUI

struct introView: View {
    @AppStorage("signed_in") var currentUserSignedIn = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.purple, Color.black]), center: .center, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all
                )
            if (currentUserSignedIn == true){
                Text("Profile")
            }else{
                OnboardingView()
            }
        }
    }
}

struct introView_Previews: PreviewProvider {
    static var previews: some View {
        introView()
    }
}
