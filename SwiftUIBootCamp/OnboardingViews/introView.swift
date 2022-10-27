//
//  introView.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 27.10.2022.
//

import SwiftUI

struct introView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.indigo.opacity(0.8), Color.blue]), center: .center, startRadius: 5, endRadius: 500)
        }
    }
}

struct introView_Previews: PreviewProvider {
    static var previews: some View {
        introView()
    }
}
