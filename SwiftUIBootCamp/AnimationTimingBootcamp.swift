//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 22.10.2022.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimation : Bool = false
    var body: some View {
        VStack{
            
            Button("Button"){
                isAnimation.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width:isAnimation  ? 350 : 100, height: 100)
                .animation(Animation.spring(
                    response: 0.5,
                dampingFraction: 0.7,
                    blendDuration: 1
                )
                )
            
            
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
