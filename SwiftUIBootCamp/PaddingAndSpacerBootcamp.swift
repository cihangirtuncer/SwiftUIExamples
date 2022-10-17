//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 17.10.2022.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Hellow world")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.vertical, 10)
                
            Text("This is the description of what we will do on the screen. It is multiple lines and we will align the text to the leading edge")
    
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3),radius: 10,  x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
