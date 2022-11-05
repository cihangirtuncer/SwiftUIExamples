//
//  FrameBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.orange)
            .frame(height:100, alignment: Alignment.top)
            .background(Color.blue)
            .frame(width: 150)
            .background(Color.red)
            .frame(maxWidth: .infinity, alignment: Alignment.leading)
            .background(Color.yellow)
            .frame(height: 400)
            .background(Color.teal)
            .frame(maxHeight: .infinity, alignment: Alignment.center)
            .background(Color.green)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
