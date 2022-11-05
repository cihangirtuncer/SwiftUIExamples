//
//  IconsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
            //.aspectRatio( contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .font(.caption)
            .font(.system(size: 200))
            .frame(width: 300, height: 300 )
            //.clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
