//
//  AnimationBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Cihangir Tuncer on 22.10.2022.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated : Bool = false
    var body: some View {
        
        VStack{
            
            Button("Button"){
                withAnimation(Animation
                    .default
                    //.repeatForever(autoreverses: true)
                    //.delay(2)
                    //.repeatCount(5, autoreverses: true)
                ){
                    isAnimated.toggle()
                }
            }
            Spacer()
            Rectangle()
                .fill(isAnimated ? .black :   .white)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .cornerRadius(50)
                .shadow(radius: 10)
                .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: isAnimated ? 30 : 110))
                    .foregroundColor(isAnimated ? .white : Color.red)
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0 )
            // .animation(Animation.default
             
                        //.repeatForever(autoreverses: true)
                        //.delay(2)
                        //.repeatCount(5, autoreverses: true)
                        
                    //    , value: 0)
            Spacer()
            /*
            Button(action: {
                withAnimation(.default){
                    isAnimated.toggle()
                }
            }, label: {
                Rectangle()
                    .fill(isAnimated ? .black :   .white)
                    .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                    .cornerRadius(50)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.system(size: isAnimated ? 30 : 110))
                        .foregroundColor(isAnimated ? .white : Color.red)
                    )
                    .offset(y: isAnimated ? 300 : 0 )
                
            })
            */
        }
        
        

    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
