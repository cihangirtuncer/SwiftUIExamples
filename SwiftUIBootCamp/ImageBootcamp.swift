//
//  ImageBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("image")
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio( contentMode: .fit)
            .frame(width: 300, height: 300)
            //.clipped()
            .cornerRadius(25)
           // .clipShape(
                //Circle()
                //Ellipse()
                //RoundedRectangle(cornerRadius: 25)
           // )
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
