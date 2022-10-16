//
//  ShapesBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 16.10.2022.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       // Circle()
       // Ellipse()
       // Capsule(style: .continuous)
       // Rectangle()
        RoundedRectangle(cornerRadius: 50)
            //.fill(Color.orange)
            //.foregroundColor(.teal)
            //.stroke()
            // .stroke(Color.red)
            // .stroke(Color.blue , lineWidth: 20)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30,lineCap: .butt, dash: [40] ))
            .trim(from: 0.4, to: 1.0)
            //.stroke(Color.teal, lineWidth: 50)
            .frame(width: 300, height: 200)
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
