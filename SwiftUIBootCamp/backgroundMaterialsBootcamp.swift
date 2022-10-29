//
//  backgroundMaterialsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 29.10.2022.
//

import SwiftUI

struct backgroundMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
     Image("image")
        )
    }
}

struct backgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        backgroundMaterialsBootcamp()
    }
}
